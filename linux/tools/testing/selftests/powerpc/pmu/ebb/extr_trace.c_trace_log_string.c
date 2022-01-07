
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_entry {scalar_t__ data; int type; } ;
struct trace_buffer {int dummy; } ;


 int ENOSPC ;
 int TRACE_TYPE_STRING ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;
 struct trace_entry* trace_alloc_entry (struct trace_buffer*,int) ;

int trace_log_string(struct trace_buffer *tb, char *str)
{
 struct trace_entry *e;
 char *p;
 int len;

 len = strlen(str);


 e = trace_alloc_entry(tb, len + 1);
 if (!e)
  return -ENOSPC;

 e->type = TRACE_TYPE_STRING;
 p = (char *)e->data;
 memcpy(p, str, len);
 p += len;
 *p = '\0';

 return 0;
}
