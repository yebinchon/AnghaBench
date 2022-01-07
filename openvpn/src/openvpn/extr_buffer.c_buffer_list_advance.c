
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_list {TYPE_1__* head; } ;
struct buffer {int dummy; } ;
struct TYPE_2__ {struct buffer buf; } ;


 int ASSERT (int ) ;
 int BLEN (struct buffer*) ;
 int buf_advance (struct buffer*,int) ;
 int buffer_list_pop (struct buffer_list*) ;

void
buffer_list_advance(struct buffer_list *ol, int n)
{
    if (ol->head)
    {
        struct buffer *buf = &ol->head->buf;
        ASSERT(buf_advance(buf, n));
        if (!BLEN(buf))
        {
            buffer_list_pop(ol);
        }
    }
}
