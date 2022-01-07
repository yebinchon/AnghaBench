
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_entry {int length; } ;
struct trace_buffer {void* tail; void* data; scalar_t__ overflow; int size; } ;


 int BASE_PREFIX ;
 int printf (char*,...) ;
 scalar_t__ trace_check_bounds (struct trace_buffer*,void*) ;
 int trace_print_entry (struct trace_entry*,int,int*) ;

void trace_buffer_print(struct trace_buffer *tb)
{
 struct trace_entry *e;
 int i, prefix;
 void *p;

 printf("Trace buffer dump:\n");
 printf("  address  %p \n", tb);
 printf("  tail     %p\n", tb->tail);
 printf("  size     %llu\n", tb->size);
 printf("  overflow %s\n", tb->overflow ? "TRUE" : "false");
 printf("  Content:\n");

 p = tb->data;

 i = 0;
 prefix = BASE_PREFIX;

 while (trace_check_bounds(tb, p) && p < tb->tail) {
  e = p;

  trace_print_entry(e, i, &prefix);

  i++;
  p = (void *)e + sizeof(*e) + e->length;
 }
}
