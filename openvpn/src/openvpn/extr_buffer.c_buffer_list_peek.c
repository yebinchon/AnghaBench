
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_list {TYPE_1__* head; } ;
struct buffer {int dummy; } ;
struct TYPE_2__ {struct buffer buf; } ;



struct buffer *
buffer_list_peek(struct buffer_list *ol)
{
    if (ol && ol->head)
    {
        return &ol->head->buf;
    }
    else
    {
        return ((void*)0);
    }
}
