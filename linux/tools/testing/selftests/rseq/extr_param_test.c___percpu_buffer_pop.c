
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct percpu_buffer_node {int dummy; } ;
struct percpu_buffer {TYPE_1__* c; } ;
struct TYPE_2__ {intptr_t offset; struct percpu_buffer_node** array; } ;



struct percpu_buffer_node *__percpu_buffer_pop(struct percpu_buffer *buffer,
            int cpu)
{
 struct percpu_buffer_node *head;
 intptr_t offset;

 offset = buffer->c[cpu].offset;
 if (offset == 0)
  return ((void*)0);
 head = buffer->c[cpu].array[offset - 1];
 buffer->c[cpu].offset = offset - 1;
 return head;
}
