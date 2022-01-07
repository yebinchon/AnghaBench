
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ expires; scalar_t__ date; scalar_t__ options; int contenttype; } ;
typedef TYPE_1__ BUFFER ;


 int CT_TEXT_PLAIN ;
 int buffer_flush (TYPE_1__*) ;
 int buffer_overflow_check (TYPE_1__*) ;

void buffer_reset(BUFFER *wb)
{
    buffer_flush(wb);

    wb->contenttype = CT_TEXT_PLAIN;
    wb->options = 0;
    wb->date = 0;
    wb->expires = 0;

    buffer_overflow_check(wb);
}
