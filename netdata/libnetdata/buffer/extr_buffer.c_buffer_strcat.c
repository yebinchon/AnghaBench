
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* buffer; size_t len; size_t size; } ;
typedef TYPE_1__ BUFFER ;


 int D_WEB_BUFFER ;
 int buffer_increase (TYPE_1__*,size_t) ;
 int buffer_need_bytes (TYPE_1__*,size_t) ;
 int buffer_overflow_check (TYPE_1__*) ;
 int debug (int ,char*,size_t,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ unlikely (int) ;

void buffer_strcat(BUFFER *wb, const char *txt)
{


    if(unlikely(!txt || !*txt)) return;

    buffer_need_bytes(wb, 1);

    char *s = &wb->buffer[wb->len], *start, *end = &wb->buffer[wb->size];
    size_t len = wb->len;

    start = s;
    while(*txt && s != end)
        *s++ = *txt++;

    len += s - start;

    wb->len = len;
    buffer_overflow_check(wb);

    if(*txt) {
        debug(D_WEB_BUFFER, "strcat(): increasing web_buffer at position %zu, size = %zu\n", wb->len, wb->size);
        len = strlen(txt);
        buffer_increase(wb, len);
        buffer_strcat(wb, txt);
    }
    else {


        buffer_need_bytes(wb, (size_t)1);
        wb->buffer[wb->len] = '\0';
    }
}
