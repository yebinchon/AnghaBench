
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; int cursor; } ;
typedef TYPE_1__* StringInfo ;


 int pq_putmessage (int ,int ,int ) ;

void
pq_endmessage_reuse(StringInfo buf)
{

 (void) pq_putmessage(buf->cursor, buf->data, buf->len);
}
