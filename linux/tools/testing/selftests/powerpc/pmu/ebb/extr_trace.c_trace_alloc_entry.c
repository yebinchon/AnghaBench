
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_entry {int length; } ;
struct trace_buffer {int dummy; } ;


 struct trace_entry* trace_alloc (struct trace_buffer*,int) ;

__attribute__((used)) static struct trace_entry *trace_alloc_entry(struct trace_buffer *tb, int payload_size)
{
 struct trace_entry *e;

 e = trace_alloc(tb, sizeof(*e) + payload_size);
 if (e)
  e->length = payload_size;

 return e;
}
