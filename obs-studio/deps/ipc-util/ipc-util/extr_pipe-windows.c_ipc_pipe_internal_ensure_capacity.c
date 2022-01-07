
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t capacity; int read_data; } ;
typedef TYPE_1__ ipc_pipe_server_t ;


 int realloc (int ,size_t) ;

__attribute__((used)) static inline void ipc_pipe_internal_ensure_capacity(ipc_pipe_server_t *pipe,
           size_t new_size)
{
 if (pipe->capacity >= new_size) {
  return;
 }

 pipe->read_data = realloc(pipe->read_data, new_size);
 pipe->capacity = new_size;
}
