
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
typedef TYPE_1__ BufferDesc ;
typedef scalar_t__ Buffer ;


 int Assert (int ) ;
 int BM_PERMANENT ;
 scalar_t__ BufferIsLocal (scalar_t__) ;
 int BufferIsPinned (scalar_t__) ;
 int BufferIsValid (scalar_t__) ;
 TYPE_1__* GetBufferDescriptor (scalar_t__) ;
 int pg_atomic_read_u32 (int *) ;

bool
BufferIsPermanent(Buffer buffer)
{
 BufferDesc *bufHdr;


 if (BufferIsLocal(buffer))
  return 0;


 Assert(BufferIsValid(buffer));
 Assert(BufferIsPinned(buffer));
 bufHdr = GetBufferDescriptor(buffer - 1);
 return (pg_atomic_read_u32(&bufHdr->state) & BM_PERMANENT) != 0;
}
