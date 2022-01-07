
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; } ;
typedef TYPE_1__ strbuf ;


 int exit (int) ;
 int fputs (char*,int ) ;
 scalar_t__ mymalloc (int) ;
 scalar_t__ realloc (TYPE_1__*,int) ;
 int stderr ;

__attribute__((used)) static strbuf *
sb_get(strbuf *sb, int len) {
    int size;
    for (size = 128; size < len; size += size)
        ;
    if (sb == 0) {
        sb = (strbuf *) mymalloc(sizeof(*sb) + size);
    }
    else {
        sb = (strbuf *) realloc(sb, sizeof(*sb) + size);
        if (sb == 0) {
            fputs("C CGI Library out of memory\n", stderr);
            exit(1);
        }
    }
    sb->size = size;
    return sb;
}
