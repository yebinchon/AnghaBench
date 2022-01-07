
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int ProcState ;


 int MaxBackends ;
 int SISeg ;
 int add_size (int ,int ) ;
 int mul_size (int,int ) ;
 int offsetof (int ,int ) ;
 int procState ;

Size
SInvalShmemSize(void)
{
 Size size;

 size = offsetof(SISeg, procState);
 size = add_size(size, mul_size(sizeof(ProcState), MaxBackends));

 return size;
}
