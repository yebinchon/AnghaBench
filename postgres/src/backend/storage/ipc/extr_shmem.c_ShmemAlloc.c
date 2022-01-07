
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 void* ShmemAllocNoError (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

void *
ShmemAlloc(Size size)
{
 void *newSpace;

 newSpace = ShmemAllocNoError(size);
 if (!newSpace)
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of shared memory (%zu bytes requested)",
      size)));
 return newSpace;
}
