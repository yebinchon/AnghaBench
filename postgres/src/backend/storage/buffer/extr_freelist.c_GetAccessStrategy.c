
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int btype; int ring_size; } ;
typedef int BufferAccessStrategyType ;
typedef TYPE_1__* BufferAccessStrategy ;
typedef int Buffer ;






 int BLCKSZ ;
 int BufferAccessStrategyData ;
 int ERROR ;
 int Min (int,int) ;
 int NBuffers ;
 int buffers ;
 int elog (int ,char*,int) ;
 scalar_t__ offsetof (int ,int ) ;
 scalar_t__ palloc0 (scalar_t__) ;

BufferAccessStrategy
GetAccessStrategy(BufferAccessStrategyType btype)
{
 BufferAccessStrategy strategy;
 int ring_size;







 switch (btype)
 {
  case 129:

   return ((void*)0);

  case 131:
   ring_size = 256 * 1024 / BLCKSZ;
   break;
  case 130:
   ring_size = 16 * 1024 * 1024 / BLCKSZ;
   break;
  case 128:
   ring_size = 256 * 1024 / BLCKSZ;
   break;

  default:
   elog(ERROR, "unrecognized buffer access strategy: %d",
     (int) btype);
   return ((void*)0);
 }


 ring_size = Min(NBuffers / 8, ring_size);


 strategy = (BufferAccessStrategy)
  palloc0(offsetof(BufferAccessStrategyData, buffers) +
    ring_size * sizeof(Buffer));


 strategy->btype = btype;
 strategy->ring_size = ring_size;

 return strategy;
}
