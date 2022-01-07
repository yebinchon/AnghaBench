
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ReleaseLruFile () ;
 scalar_t__ max_safe_fds ;
 scalar_t__ nfile ;
 scalar_t__ numAllocatedDescs ;

__attribute__((used)) static void
ReleaseLruFiles(void)
{
 while (nfile + numAllocatedDescs >= max_safe_fds)
 {
  if (!ReleaseLruFile())
   break;
 }
}
