
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_entry {int type; } ;
struct trace_buffer {int dummy; } ;


 int ENOSPC ;
 int TRACE_TYPE_OUTDENT ;
 struct trace_entry* trace_alloc_entry (struct trace_buffer*,int ) ;

int trace_log_outdent(struct trace_buffer *tb)
{
 struct trace_entry *e;

 e = trace_alloc_entry(tb, 0);
 if (!e)
  return -ENOSPC;

 e->type = TRACE_TYPE_OUTDENT;

 return 0;
}
