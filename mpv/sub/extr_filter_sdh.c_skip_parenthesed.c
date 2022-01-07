
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* opts; } ;
struct buffer {int pos; } ;
struct TYPE_2__ {int sub_filter_SDH_harder; } ;


 int copy_ass (struct sd*,char**,struct buffer*) ;
 scalar_t__ mp_isalpha (char) ;
 scalar_t__ mp_isdigit (char) ;
 scalar_t__ mp_isupper (char) ;

__attribute__((used)) static bool skip_parenthesed(struct sd *sd, char **rpp, struct buffer *buf)
{
    int filter_harder = sd->opts->sub_filter_SDH_harder;
    char *rp = *rpp;
    int old_pos = buf->pos;

    rp++;

    bool only_digits = 1;
    while (*rp && rp[0] != ')') {
        if (rp[0] == '{') {
            copy_ass(sd, &rp, buf);
        } else if ((mp_isalpha(rp[0]) &&
                    (filter_harder || mp_isupper(rp[0]) || rp[0] == 'l')) ||
                   mp_isdigit(rp[0]) ||
                   rp[0] == ' ' || rp[0] == '\'' || rp[0] == '#' ||
                   rp[0] == '.' || rp[0] == ',' ||
                   rp[0] == '-' || rp[0] == '"' || rp[0] == '\\') {
            if (!mp_isdigit(rp[0]))
                only_digits = 0;
            rp++;
        } else {
            buf->pos = old_pos;
            return 0;
        }
    }
    if (!*rp) {

        buf->pos = old_pos;
        return 0;
    }
    if (only_digits) {

        buf->pos = old_pos;
        return 0;
    }
    rp++;

    while (rp[0] == ' ') {
        rp++;
    }
    *rpp = rp;

    return 1;
}
