
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buffer; size_t len; } ;
typedef TYPE_1__ BUFFER ;


 int buffer_need_bytes (TYPE_1__*,int) ;
 char* print_number_llu_r (char*,unsigned long long) ;
 char* print_number_lu_r (char*,unsigned long long) ;

void buffer_print_llu(BUFFER *wb, unsigned long long uvalue)
{
    buffer_need_bytes(wb, 50);

    char *str = &wb->buffer[wb->len];
    char *wstr = str;







    do *wstr++ = (char)('0' + (uvalue % 10)); while(uvalue /= 10);



    *wstr = '\0';


    char *begin = str, *end = wstr - 1, aux;
    while (end > begin) aux = *end, *end-- = *begin, *begin++ = aux;


    wb->len += wstr - str;
}
