
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
struct bstr {int dummy; } ;
struct MPContext {char* filename; int global; } ;
typedef int buffer ;
typedef struct bstr bstr ;


 char const* BSTR_P (struct bstr) ;
 int append_filename (char**,char*) ;
 int bstr0 (char*) ;
 int bstr_equals0 (struct bstr,char*) ;
 struct bstr bstr_splice (int ,int ,int) ;
 int get_playback_time (struct MPContext*) ;
 struct tm* localtime (int *) ;
 char* mp_basename (char*) ;
 struct bstr mp_dirname (char*) ;
 char* mp_format_time (int ,int) ;
 char* mp_format_time_fmt (char*,int ) ;
 char* mp_get_user_path (int *,int ,char*) ;
 int mp_is_url (int ) ;
 char* mp_property_expand_string (struct MPContext*,char*) ;
 char* strchr (char*,char) ;
 int strftime (char*,int,char*,struct tm*) ;
 char* stripext (char*,char*) ;
 char* talloc_asprintf (int *,char*,char const*) ;
 char* talloc_asprintf_append (char*,char*,...) ;
 int talloc_free (char*) ;
 char* talloc_strdup (int *,char*) ;
 char* talloc_strdup_append (char*,char*) ;
 char* talloc_strndup (char*,char*,int) ;
 char* talloc_strndup_append (char*,char*,int) ;
 int time (int *) ;

__attribute__((used)) static char *create_fname(struct MPContext *mpctx, char *template,
                          const char *file_ext, int *sequence, int *frameno)
{
    char *res = talloc_strdup(((void*)0), "");

    time_t raw_time = time(((void*)0));
    struct tm *local_time = localtime(&raw_time);

    if (!template || *template == '\0')
        return ((void*)0);

    for (;;) {
        char *next = strchr(template, '%');
        if (!next)
            break;
        res = talloc_strndup_append(res, template, next - template);
        template = next + 1;
        char fmt = *template++;
        switch (fmt) {
        case '#':
        case '0':
        case 'n': {
            int digits = '4';
            if (fmt == '#') {
                if (!*sequence) {
                    *frameno = 1;
                }
                fmt = *template++;
            }
            if (fmt == '0') {
                digits = *template++;
                if (digits < '0' || digits > '9')
                    goto error_exit;
                fmt = *template++;
            }
            if (fmt != 'n')
                goto error_exit;
            char fmtstr[] = {'%', '0', digits, 'd', '\0'};
            res = talloc_asprintf_append(res, fmtstr, *frameno);
            if (*frameno < 100000 - 1) {
                (*frameno) += 1;
                (*sequence) += 1;
            }
            break;
        }
        case 'f':
        case 'F': {
            char *video_file = ((void*)0);
            if (mpctx->filename)
                video_file = mp_basename(mpctx->filename);

            if (!video_file)
                video_file = "NO_FILE";

            char *name = video_file;
            if (fmt == 'F')
                name = stripext(res, video_file);
            append_filename(&res, name);
            break;
        }
        case 'x':
        case 'X': {
            char *fallback = "";
            if (fmt == 'X') {
                if (template[0] != '{')
                    goto error_exit;
                char *end = strchr(template, '}');
                if (!end)
                    goto error_exit;
                fallback = talloc_strndup(res, template + 1, end - template - 1);
                template = end + 1;
            }
            if (!mpctx->filename || mp_is_url(bstr0(mpctx->filename))) {
                res = talloc_strdup_append(res, fallback);
            } else {
                bstr dir = mp_dirname(mpctx->filename);
                if (!bstr_equals0(dir, "."))
                    res = talloc_asprintf_append(res, "%.*s", BSTR_P(dir));
            }
            break;
        }
        case 'p':
        case 'P': {
            char *t = mp_format_time(get_playback_time(mpctx), fmt == 'P');
            append_filename(&res, t);
            talloc_free(t);
            break;
        }
        case 'w': {
            char tfmt = *template;
            if (!tfmt)
                goto error_exit;
            template++;
            char fmtstr[] = {'%', tfmt, '\0'};
            char *s = mp_format_time_fmt(fmtstr, get_playback_time(mpctx));
            if (!s)
                goto error_exit;
            append_filename(&res, s);
            talloc_free(s);
            break;
        }
        case 't': {
            char tfmt = *template;
            if (!tfmt)
                goto error_exit;
            template++;
            char fmtstr[] = {'%', tfmt, '\0'};
            char buffer[80];
            if (strftime(buffer, sizeof(buffer), fmtstr, local_time) == 0)
                buffer[0] = '\0';
            append_filename(&res, buffer);
            break;
        }
        case '{': {
            char *end = strchr(template, '}');
            if (!end)
                goto error_exit;
            struct bstr prop = bstr_splice(bstr0(template), 0, end - template);
            char *tmp = talloc_asprintf(((void*)0), "${%.*s}", BSTR_P(prop));
            char *s = mp_property_expand_string(mpctx, tmp);
            talloc_free(tmp);
            if (s)
                append_filename(&res, s);
            talloc_free(s);
            template = end + 1;
            break;
        }
        case '%':
            res = talloc_strdup_append(res, "%");
            break;
        default:
            goto error_exit;
        }
    }

    res = talloc_strdup_append(res, template);
    res = talloc_asprintf_append(res, ".%s", file_ext);
    char *fname = mp_get_user_path(((void*)0), mpctx->global, res);
    talloc_free(res);
    return fname;

error_exit:
    talloc_free(res);
    return ((void*)0);
}
