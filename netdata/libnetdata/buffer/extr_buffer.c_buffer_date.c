
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* buffer; size_t len; } ;
typedef TYPE_1__ BUFFER ;


 int buffer_need_bytes (TYPE_1__*,int) ;
 int buffer_overflow_check (TYPE_1__*) ;

void buffer_date(BUFFER *wb, int year, int month, int day, int hours, int minutes, int seconds)
{




    buffer_need_bytes(wb, 36);

    char *b = &wb->buffer[wb->len];
  char *p = b;

  *p++ = '0' + year / 1000; year %= 1000;
  *p++ = '0' + year / 100; year %= 100;
  *p++ = '0' + year / 10;
  *p++ = '0' + year % 10;
  *p++ = '-';
  *p++ = '0' + month / 10;
  *p++ = '0' + month % 10;
  *p++ = '-';
  *p++ = '0' + day / 10;
  *p++ = '0' + day % 10;
  *p++ = ' ';
  *p++ = '0' + hours / 10;
  *p++ = '0' + hours % 10;
  *p++ = ':';
  *p++ = '0' + minutes / 10;
  *p++ = '0' + minutes % 10;
  *p++ = ':';
  *p++ = '0' + seconds / 10;
  *p++ = '0' + seconds % 10;
  *p = '\0';

    wb->len += (size_t)(p - b);


    wb->buffer[wb->len] = '\0';
    buffer_overflow_check(wb);
}
