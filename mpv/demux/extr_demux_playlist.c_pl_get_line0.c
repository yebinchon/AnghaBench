
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl_parser {int error; TYPE_1__* s; int utf16; int buffer; } ;
struct TYPE_2__ {int eof; } ;


 char* read_line (TYPE_1__*,int ,int,int ) ;
 int strlen (char*) ;

__attribute__((used)) static char *pl_get_line0(struct pl_parser *p)
{
    char *res = read_line(p->s, p->buffer, sizeof(p->buffer), p->utf16);
    if (res) {
        int len = strlen(res);
        if (len > 0 && res[len - 1] == '\n')
            res[len - 1] = '\0';
    } else {
        p->error |= !p->s->eof;
    }
    return res;
}
