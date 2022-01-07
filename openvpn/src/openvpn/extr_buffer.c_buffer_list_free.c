
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_list {int dummy; } ;


 int buffer_list_reset (struct buffer_list*) ;
 int free (struct buffer_list*) ;

void
buffer_list_free(struct buffer_list *ol)
{
    if (ol)
    {
        buffer_list_reset(ol);
        free(ol);
    }
}
