
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef void* u64 ;
struct trace_entry {scalar_t__ data; int type; } ;
struct trace_buffer {int dummy; } ;
typedef int reg ;


 int ENOSPC ;
 int TRACE_TYPE_REG ;
 struct trace_entry* trace_alloc_entry (struct trace_buffer*,int) ;

int trace_log_reg(struct trace_buffer *tb, u64 reg, u64 value)
{
 struct trace_entry *e;
 u64 *p;

 e = trace_alloc_entry(tb, sizeof(reg) + sizeof(value));
 if (!e)
  return -ENOSPC;

 e->type = TRACE_TYPE_REG;
 p = (u64 *)e->data;
 *p++ = reg;
 *p++ = value;

 return 0;
}
