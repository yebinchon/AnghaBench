
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UInt32 ;
struct TYPE_3__ {size_t state; int posAlignEncoder; int rc; int * posSlotEncoder; int ProbPrices; int fastMode; int lenEnc; int * isRep; int ** isMatch; } ;
typedef TYPE_1__ CLzmaEnc ;


 size_t GetLenToPosState (size_t) ;
 size_t LZMA_MATCH_LEN_MIN ;
 int LenEnc_Encode2 (int *,int *,size_t,size_t,int,int ) ;
 int RangeEnc_EncodeBit (int *,int *,int) ;
 int RangeEnc_EncodeDirectBits (int *,size_t,int) ;
 int RcTree_Encode (int *,int ,int,int) ;
 int RcTree_ReverseEncode (int *,int ,size_t,int ) ;
 int kAlignMask ;
 size_t* kMatchNextStates ;
 size_t kNumAlignBits ;
 int kNumPosSlotBits ;

__attribute__((used)) static void WriteEndMarker(CLzmaEnc *p, UInt32 posState)
{
  UInt32 len;
  RangeEnc_EncodeBit(&p->rc, &p->isMatch[p->state][posState], 1);
  RangeEnc_EncodeBit(&p->rc, &p->isRep[p->state], 0);
  p->state = kMatchNextStates[p->state];
  len = LZMA_MATCH_LEN_MIN;
  LenEnc_Encode2(&p->lenEnc, &p->rc, len - LZMA_MATCH_LEN_MIN, posState, !p->fastMode, p->ProbPrices);
  RcTree_Encode(&p->rc, p->posSlotEncoder[GetLenToPosState(len)], kNumPosSlotBits, (1 << kNumPosSlotBits) - 1);
  RangeEnc_EncodeDirectBits(&p->rc, (((UInt32)1 << 30) - 1) >> kNumAlignBits, 30 - kNumAlignBits);
  RcTree_ReverseEncode(&p->rc, p->posAlignEncoder, kNumAlignBits, kAlignMask);
}
