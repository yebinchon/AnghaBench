
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct buffer {int dummy; } ;


 char append (struct sd*,struct buffer*,char) ;

__attribute__((used)) static void copy_ass(struct sd *sd, char **rpp, struct buffer *buf)
{
    char *rp = *rpp;

    while (rp[0] == '{') {
        while (*rp) {
            char tmp = append(sd, buf, rp[0]);
            rp++;
            if (tmp == '}')
                break;
        }
    }
    *rpp = rp;

    return;
}
