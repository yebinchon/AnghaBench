
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int calculated_number ;
struct TYPE_6__ {size_t len; char* buffer; } ;
typedef TYPE_1__ BUFFER ;


 int buffer_need_bytes (TYPE_1__*,int) ;
 int buffer_overflow_check (TYPE_1__*) ;
 int buffer_strcat (TYPE_1__*,char*) ;
 scalar_t__ isinf (int ) ;
 scalar_t__ isnan (int ) ;
 scalar_t__ print_calculated_number (char*,int ) ;

void buffer_rrd_value(BUFFER *wb, calculated_number value)
{
    buffer_need_bytes(wb, 50);

    if(isnan(value) || isinf(value)) {
        buffer_strcat(wb, "null");
        return;
    }
    else
        wb->len += print_calculated_number(&wb->buffer[wb->len], value);


    buffer_need_bytes(wb, 1);
    wb->buffer[wb->len] = '\0';

    buffer_overflow_check(wb);
}
