
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_buffer {int size; } ;



__attribute__((used)) static bool trace_check_bounds(struct trace_buffer *tb, void *p)
{
 return p < ((void *)tb + tb->size);
}
