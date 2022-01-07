
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_5__ {int size; int len; int * buffer; } ;
typedef TYPE_1__ BUFFER ;


 int buffer_need_bytes (TYPE_1__*,int) ;
 int buffer_overflow_check (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vsnprintfz (int *,size_t,char const*,int ) ;

void buffer_vsprintf(BUFFER *wb, const char *fmt, va_list args)
{
    if(unlikely(!fmt || !*fmt)) return;

    buffer_need_bytes(wb, 2);

    size_t len = wb->size - wb->len - 1;

    wb->len += vsnprintfz(&wb->buffer[wb->len], len, fmt, args);

    buffer_overflow_check(wb);


}
