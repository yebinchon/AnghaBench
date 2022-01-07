
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AtProcExit_Buffers ;
 int on_shmem_exit (int ,int ) ;

void
InitBufferPoolBackend(void)
{
 on_shmem_exit(AtProcExit_Buffers, 0);
}
