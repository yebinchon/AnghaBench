
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int VarBit ;


 int Min (int,int) ;
 int VARBITBYTES (int *) ;
 int VARBITLEN (int *) ;
 int VARBITS (int *) ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static int32
bit_cmp(VarBit *arg1, VarBit *arg2)
{
 int bitlen1,
    bytelen1,
    bitlen2,
    bytelen2;
 int32 cmp;

 bytelen1 = VARBITBYTES(arg1);
 bytelen2 = VARBITBYTES(arg2);

 cmp = memcmp(VARBITS(arg1), VARBITS(arg2), Min(bytelen1, bytelen2));
 if (cmp == 0)
 {
  bitlen1 = VARBITLEN(arg1);
  bitlen2 = VARBITLEN(arg2);
  if (bitlen1 != bitlen2)
   cmp = (bitlen1 < bitlen2) ? -1 : 1;
 }
 return cmp;
}
