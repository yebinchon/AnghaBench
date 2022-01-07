
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UInt32 ;
struct TYPE_5__ {size_t** prices; } ;
struct TYPE_6__ {TYPE_1__ repLenEnc; } ;
typedef TYPE_2__ CLzmaEnc ;


 size_t GetPureRepPrice (TYPE_2__*,size_t,size_t,size_t) ;
 size_t LZMA_MATCH_LEN_MIN ;

__attribute__((used)) static UInt32 GetRepPrice(CLzmaEnc *p, UInt32 repIndex, UInt32 len, UInt32 state, UInt32 posState)
{
  return p->repLenEnc.prices[posState][len - LZMA_MATCH_LEN_MIN] +
    GetPureRepPrice(p, repIndex, state, posState);
}
