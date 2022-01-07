
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_buffer {void* tail; } ;


 int trace_check_alloc (struct trace_buffer*,void*) ;

__attribute__((used)) static void *trace_alloc(struct trace_buffer *tb, int bytes)
{
 void *p, *newtail;

 p = tb->tail;
 newtail = tb->tail + bytes;
 if (!trace_check_alloc(tb, newtail))
  return ((void*)0);

 tb->tail = newtail;

 return p;
}
