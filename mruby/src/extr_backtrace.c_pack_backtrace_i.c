
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backtrace_location {int * filename; } ;
typedef int mrb_state ;



__attribute__((used)) static void
pack_backtrace_i(mrb_state *mrb,
                 const struct backtrace_location *loc,
                 void *data)
{
  struct backtrace_location **pptr = (struct backtrace_location**)data;
  struct backtrace_location *ptr = *pptr;

  if (loc->filename == ((void*)0)) return;
  *ptr = *loc;
  *pptr = ptr+1;
}
