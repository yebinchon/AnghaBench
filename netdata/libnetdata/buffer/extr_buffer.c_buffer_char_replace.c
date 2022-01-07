
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buffer; size_t len; } ;
typedef TYPE_1__ BUFFER ;


 int buffer_overflow_check (TYPE_1__*) ;

void buffer_char_replace(BUFFER *wb, char from, char to)
{
    char *s = wb->buffer, *end = &wb->buffer[wb->len];

    while(s != end) {
        if(*s == from) *s = to;
        s++;
    }

    buffer_overflow_check(wb);
}
