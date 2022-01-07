
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_4__ {char const* name; struct TYPE_4__* parent; void* overhead_end; void* end_time; } ;
typedef TYPE_1__ profile_call ;


 int LOG_ERROR ;
 int blog (int ,char*,...) ;
 int merge_context (TYPE_1__*) ;
 void* os_gettime_ns () ;
 TYPE_1__* thread_context ;
 int thread_enabled ;

void profile_end(const char *name)
{
 uint64_t end = os_gettime_ns();
 if (!thread_enabled)
  return;

 profile_call *call = thread_context;
 if (!call) {
  blog(LOG_ERROR, "Called profile end with no active profile");
  return;
 }

 if (!call->name)
  call->name = name;

 if (call->name != name) {
  blog(LOG_ERROR,
       "Called profile end with mismatching name: "
       "start(\"%s\"[%p]) <-> end(\"%s\"[%p])",
       call->name, call->name, name, name);

  profile_call *parent = call->parent;
  while (parent && parent->parent && parent->name != name)
   parent = parent->parent;

  if (!parent || parent->name != name)
   return;

  while (call->name != name) {
   profile_end(call->name);
   call = call->parent;
  }
 }

 thread_context = call->parent;

 call->end_time = end;




 if (call->parent)
  return;

 merge_context(call);
}
