
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct buffer {int pos; char* string; } ;


 int append (struct sd*,struct buffer*,char) ;
 int copy_ass (struct sd*,char**,struct buffer*) ;

__attribute__((used)) static void remove_leading_hyphen_space(struct sd *sd, int start_pos, struct buffer *buf)
{
    int old_pos = buf->pos;
    if (start_pos < 0 || start_pos >= old_pos)
        return;
    append(sd, buf, '\0');


    while (buf->string[start_pos] == '{') {
        while (buf->string[start_pos] && buf->string[start_pos] != '}') {
            start_pos++;
        }
        if (buf->string[start_pos])
            start_pos++;
    }


    if (buf->string[start_pos] != '-') {
        buf->pos = old_pos;
        return;
    }

    char *rp = &buf->string[start_pos];
    buf->pos = start_pos;
    rp++;
    copy_ass(sd, &rp, buf);
    while (rp[0] == ' ') {
        rp++;
        copy_ass(sd, &rp, buf);
    }
    while (*rp) {

        append(sd, buf, rp[0]);
        rp++;
    }
}
