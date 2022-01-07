
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_buffer {int overflow; } ;


 int trace_check_bounds (struct trace_buffer*,void*) ;

__attribute__((used)) static bool trace_check_alloc(struct trace_buffer *tb, void *p)
{






 if (tb->overflow)
  return 0;

 if (!trace_check_bounds(tb, p)) {
  tb->overflow = 1;
  return 0;
 }

 return 1;
}
