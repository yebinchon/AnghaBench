
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sig_atomic_t ;
typedef int Size ;


 int MaxLivePostmasterChildren () ;
 int PMChildFlags ;
 int PMSignalData ;
 int add_size (int ,int ) ;
 int mul_size (int ,int) ;
 int offsetof (int ,int ) ;

Size
PMSignalShmemSize(void)
{
 Size size;

 size = offsetof(PMSignalData, PMChildFlags);
 size = add_size(size, mul_size(MaxLivePostmasterChildren(),
           sizeof(sig_atomic_t)));

 return size;
}
