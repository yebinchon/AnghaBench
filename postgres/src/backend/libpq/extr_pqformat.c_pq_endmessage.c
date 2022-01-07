
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; int len; int cursor; } ;
typedef TYPE_1__* StringInfo ;


 int pfree (int *) ;
 int pq_putmessage (int ,int *,int ) ;

void
pq_endmessage(StringInfo buf)
{

 (void) pq_putmessage(buf->cursor, buf->data, buf->len);

 pfree(buf->data);
 buf->data = ((void*)0);
}
