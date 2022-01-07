
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int u64 ;
struct trace_entry {scalar_t__ data; int type; } ;
struct trace_buffer {int dummy; } ;


 int ENOSPC ;
 int TRACE_TYPE_COUNTER ;
 struct trace_entry* trace_alloc_entry (struct trace_buffer*,int) ;

int trace_log_counter(struct trace_buffer *tb, u64 value)
{
 struct trace_entry *e;
 u64 *p;

 e = trace_alloc_entry(tb, sizeof(value));
 if (!e)
  return -ENOSPC;

 e->type = TRACE_TYPE_COUNTER;
 p = (u64 *)e->data;
 *p++ = value;

 return 0;
}
