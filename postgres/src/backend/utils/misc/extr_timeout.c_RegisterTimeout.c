
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * timeout_handler_proc ;
typedef size_t TimeoutId ;
struct TYPE_2__ {int * timeout_handler; } ;


 int Assert (int ) ;
 int ERRCODE_CONFIGURATION_LIMIT_EXCEEDED ;
 int FATAL ;
 size_t MAX_TIMEOUTS ;
 size_t USER_TIMEOUT ;
 TYPE_1__* all_timeouts ;
 int all_timeouts_initialized ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

TimeoutId
RegisterTimeout(TimeoutId id, timeout_handler_proc handler)
{
 Assert(all_timeouts_initialized);



 if (id >= USER_TIMEOUT)
 {

  for (id = USER_TIMEOUT; id < MAX_TIMEOUTS; id++)
   if (all_timeouts[id].timeout_handler == ((void*)0))
    break;
  if (id >= MAX_TIMEOUTS)
   ereport(FATAL,
     (errcode(ERRCODE_CONFIGURATION_LIMIT_EXCEEDED),
      errmsg("cannot add more timeout reasons")));
 }

 Assert(all_timeouts[id].timeout_handler == ((void*)0));

 all_timeouts[id].timeout_handler = handler;

 return id;
}
