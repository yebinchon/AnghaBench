
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int eof; } ;
typedef TYPE_1__ stream_t ;


 int MP_WARN (TYPE_1__*,char*) ;
 scalar_t__ memchr (char*,char,int) ;
 int read_characters (TYPE_1__*,char*,int,int) ;

__attribute__((used)) static char *read_line(stream_t *s, char *mem, int max, int utf16)
{
    if (max < 1)
        return ((void*)0);
    int read = 0;
    while (1) {

        int l = read_characters(s, &mem[read], max - read - 1, utf16);
        if (l < 0 || memchr(&mem[read], '\0', l)) {
            MP_WARN(s, "error reading line\n");
            s->eof = 0;
            return ((void*)0);
        }
        read += l;
        if (l == 0 || (read > 0 && mem[read - 1] == '\n'))
            break;
    }
    mem[read] = '\0';
    if (s->eof && read == 0)
        return ((void*)0);
    return mem;
}
