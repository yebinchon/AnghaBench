
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ready_event; } ;
typedef TYPE_1__ ipc_pipe_server_t ;


 int CreateEvent (int *,int,int,int *) ;

__attribute__((used)) static inline bool ipc_pipe_internal_create_events(ipc_pipe_server_t *pipe)
{
 pipe->ready_event = CreateEvent(((void*)0), 0, 0, ((void*)0));
 return !!pipe->ready_event;
}
