
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t size; scalar_t__ read_data; } ;
typedef TYPE_1__ ipc_pipe_server_t ;


 int ipc_pipe_internal_ensure_capacity (TYPE_1__*,size_t) ;
 int memcpy (scalar_t__,int *,size_t) ;

__attribute__((used)) static inline void ipc_pipe_internal_append_bytes(ipc_pipe_server_t *pipe,
        uint8_t *bytes, size_t size)
{
 size_t new_size = pipe->size + size;
 ipc_pipe_internal_ensure_capacity(pipe, new_size);
 memcpy(pipe->read_data + pipe->size, bytes, size);
 pipe->size = new_size;
}
