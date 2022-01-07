
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct buffer {int pos; } ;


 int copy_ass (struct sd*,char**,struct buffer*) ;

__attribute__((used)) static bool skip_bracketed(struct sd *sd, char **rpp, struct buffer *buf)
{
    char *rp = *rpp;
    int old_pos = buf->pos;

    rp++;

    while (*rp && rp[0] != ']') {
        if (rp[0] == '{') {
            copy_ass(sd, &rp, buf);
        } else {
            rp++;
        }
    }
    if (!*rp) {

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
