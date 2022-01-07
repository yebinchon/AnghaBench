
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct buffer {char* string; int pos; } ;


 int MP_VERBOSE (struct sd*,char*) ;
 char append (struct sd*,struct buffer*,char) ;
 int copy_ass (struct sd*,char**,struct buffer*) ;
 int init_buf (struct buffer*,scalar_t__) ;
 int remove_leading_hyphen_space (struct sd*,int,struct buffer*) ;
 int skip_bracketed (struct sd*,char**,struct buffer*) ;
 int skip_parenthesed (struct sd*,char**,struct buffer*) ;
 int skip_speaker_label (struct sd*,char**,struct buffer*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int talloc_free (char*) ;
 char* talloc_strdup (int *,char*) ;
 char* talloc_strndup (int *,char*,int) ;

char *filter_SDH(struct sd *sd, char *format, int n_ignored, char *data, int length)
{
    if (!format) {
        MP_VERBOSE(sd, "SDH filtering not possible - format missing\n");
        return length ? talloc_strndup(((void*)0), data, length) : talloc_strdup(((void*)0), data);
    }


    char *ass = length ? talloc_strndup(((void*)0), data, length) : data;

    int comma = 0;

    for (char *c = format; *c; c++) {
        if (*c == ',') {
            comma++;
            if (strncasecmp(c + 1, "Text", 4) == 0)
                break;
        }
    }

    comma -= n_ignored;

    struct buffer writebuf;
    struct buffer *buf = &writebuf;

    init_buf(buf, strlen(ass) + 1);

    char *rp = ass;


    for (int k = 0; k < comma; k++) {
        while (*rp) {
            char tmp = append(sd, buf, rp[0]);
            rp++;
            if (tmp == ',')
                break;
        }
    }
    if (!*rp) {
        talloc_free(buf->string);
        MP_VERBOSE(sd, "SDH filtering not possible - cannot find text field\n");
        return length ? ass : talloc_strdup(((void*)0), ass);
    }

    bool contains_text = 0;
    bool line_with_text = 0;
    int wp_line_start = buf->pos;
    int wp_line_end = buf->pos;



    while (*rp) {
        line_with_text = 0;
        wp_line_start = buf->pos;


        skip_speaker_label(sd, &rp, buf);


        while (*rp && !(rp[0] == '\\' && rp[1] == 'N')) {
            copy_ass(sd, &rp, buf);
            if (rp[0] == '[') {
                if (!skip_bracketed(sd, &rp, buf)) {
                    append(sd, buf, rp[0]);
                    rp++;
                    line_with_text = 1;
                }
            } else if (rp[0] == '(') {
                if (!skip_parenthesed(sd, &rp, buf)) {
                    append(sd, buf, rp[0]);
                    rp++;
                    line_with_text = 1;
                }
            } else if (*rp && rp[0] != '\\') {
                if ((rp[0] > 32 && rp[0] < 127 && rp[0] != '-') ||
                    (unsigned char)rp[0] >= 0xC0)
                {
                    line_with_text = 1;
                }
                append(sd, buf, rp[0]);
                rp++;
            } else if (rp[0] == '\\' && rp[1] != 'N') {
                append(sd, buf, rp[0]);
                rp++;
            }
        }

        if (*rp) {

            if (line_with_text) {
                contains_text = 1;
                wp_line_end = buf->pos;
                append(sd, buf, rp[0]);
                append(sd, buf, rp[1]);
                rp += 2;
            } else {

                remove_leading_hyphen_space(sd, wp_line_start, buf);

                rp += 2;
            }
        }
    }


    if (!line_with_text) {
        buf->pos = wp_line_end;
    } else {
        contains_text = 1;
    }
    if (length)
        talloc_free(ass);
    if (contains_text) {

        append(sd, buf, '\0');
        return buf->string;
    } else {

        talloc_free(buf->string);
        return ((void*)0);
    }
}
