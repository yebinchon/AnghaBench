
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERROR_IO_PENDING ;
 scalar_t__ GetLastError () ;

__attribute__((used)) static inline bool ipc_pipe_internal_io_pending(void)
{
 return GetLastError() == ERROR_IO_PENDING;
}
