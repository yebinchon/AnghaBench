
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* opts; } ;
struct buffer {int pos; } ;
struct TYPE_2__ {int sub_filter_SDH_harder; } ;


 int append (struct sd*,struct buffer*,char) ;
 int copy_ass (struct sd*,char**,struct buffer*) ;
 scalar_t__ mp_isalpha (char) ;
 scalar_t__ mp_isdigit (char) ;
 scalar_t__ mp_isupper (char) ;

__attribute__((used)) static void skip_speaker_label(struct sd *sd, char **rpp, struct buffer *buf)
{
    int filter_harder = sd->opts->sub_filter_SDH_harder;
    char *rp = *rpp;
    int old_pos = buf->pos;

    copy_ass(sd, &rp, buf);

    if (rp[0] == '-') {
        append(sd, buf, rp[0]);
        rp++;
    }
    copy_ass(sd, &rp, buf);
    while (rp[0] == ' ') {
        append(sd, buf, rp[0]);
        rp++;
        copy_ass(sd, &rp, buf);
    }

    while (*rp && rp[0] != ':') {
        if (rp[0] == '{') {
            copy_ass(sd, &rp, buf);
        } else if ((mp_isalpha(rp[0]) &&
                    (filter_harder || mp_isupper(rp[0]) || rp[0] == 'l')) ||
                   mp_isdigit(rp[0]) ||
                   rp[0] == ' ' || rp[0] == '\'' ||
                   (filter_harder && (rp[0] == '(' || rp[0] == ')')) ||
                   rp[0] == '#' || rp[0] == '.' || rp[0] == ',') {
            rp++;
        } else {
            buf->pos = old_pos;
            return;
         }
    }
    if (!*rp) {

        buf->pos = old_pos;
        return;
    }
    rp++;
    copy_ass(sd, &rp, buf);
    if (!*rp) {

    } else if (rp[0] == '\\' && rp[1] == 'N') {

        rp += 2;
    } else if (rp[0] == ' ') {
        while (rp[0] == ' ') {
            rp++;
        }
        if (rp[0] == '\\' && rp[1] == 'N') {

            rp += 2;
        }
    } else {

        buf->pos = old_pos;
        return;
    }
    *rpp = rp;

    return;
}
