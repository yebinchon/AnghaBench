
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_buffer {int size; } ;


 int printf (char*,int ,struct trace_buffer*) ;

void trace_print_location(struct trace_buffer *tb)
{
 printf("Trace buffer 0x%llx bytes @ %p\n", tb->size, tb);
}
