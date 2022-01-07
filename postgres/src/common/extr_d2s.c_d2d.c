
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
typedef int uint64 ;
typedef int uint32 ;
typedef int int32 ;
struct TYPE_3__ {int exponent; int mantissa; } ;
typedef TYPE_1__ floating_decimal_64 ;


 int DOUBLE_BIAS ;
 int const DOUBLE_MANTISSA_BITS ;
 int DOUBLE_POW5_BITCOUNT ;
 int DOUBLE_POW5_INV_BITCOUNT ;
 int * DOUBLE_POW5_INV_SPLIT ;
 int * DOUBLE_POW5_SPLIT ;
 int const UINT64CONST (int) ;
 int div10 (int) ;
 int div100 (int) ;
 int div5 (int const) ;
 int log10Pow2 (int) ;
 int log10Pow5 (int) ;
 int mulShiftAll (int,int ,int const,int*,int*,int const) ;
 int multipleOfPowerOf2 (int const,int const) ;
 int multipleOfPowerOf5 (int const,int const) ;
 int pow5bits (int const) ;

__attribute__((used)) static inline floating_decimal_64
d2d(const uint64 ieeeMantissa, const uint32 ieeeExponent)
{
 int32 e2;
 uint64 m2;

 if (ieeeExponent == 0)
 {

  e2 = 1 - DOUBLE_BIAS - DOUBLE_MANTISSA_BITS - 2;
  m2 = ieeeMantissa;
 }
 else
 {
  e2 = ieeeExponent - DOUBLE_BIAS - DOUBLE_MANTISSA_BITS - 2;
  m2 = (UINT64CONST(1) << DOUBLE_MANTISSA_BITS) | ieeeMantissa;
 }





 const bool acceptBounds = 0;



 const uint64 mv = 4 * m2;


 const uint32 mmShift = ieeeMantissa != 0 || ieeeExponent <= 1;






 uint64 vr,
    vp,
    vm;
 int32 e10;
 bool vmIsTrailingZeros = 0;
 bool vrIsTrailingZeros = 0;

 if (e2 >= 0)
 {






  const uint32 q = log10Pow2(e2) - (e2 > 3);
  const int32 k = DOUBLE_POW5_INV_BITCOUNT + pow5bits(q) - 1;
  const int32 i = -e2 + q + k;

  e10 = q;

  vr = mulShiftAll(m2, DOUBLE_POW5_INV_SPLIT[q], i, &vp, &vm, mmShift);

  if (q <= 21)
  {







   const uint32 mvMod5 = (uint32) (mv - 5 * div5(mv));

   if (mvMod5 == 0)
   {
    vrIsTrailingZeros = multipleOfPowerOf5(mv, q);
   }
   else if (acceptBounds)
   {






    vmIsTrailingZeros = multipleOfPowerOf5(mv - 1 - mmShift, q);
   }
   else
   {

    vp -= multipleOfPowerOf5(mv + 2, q);
   }
  }
 }
 else
 {



  const uint32 q = log10Pow5(-e2) - (-e2 > 1);
  const int32 i = -e2 - q;
  const int32 k = pow5bits(i) - DOUBLE_POW5_BITCOUNT;
  const int32 j = q - k;

  e10 = q + e2;

  vr = mulShiftAll(m2, DOUBLE_POW5_SPLIT[i], j, &vp, &vm, mmShift);

  if (q <= 1)
  {





   vrIsTrailingZeros = 1;
   if (acceptBounds)
   {




    vmIsTrailingZeros = mmShift == 1;
   }
   else
   {



    --vp;
   }
  }
  else if (q < 63)
  {
   vrIsTrailingZeros = multipleOfPowerOf2(mv, q - 1);
  }
 }





 uint32 removed = 0;
 uint8 lastRemovedDigit = 0;
 uint64 output;


 if (vmIsTrailingZeros || vrIsTrailingZeros)
 {

  for (;;)
  {
   const uint64 vpDiv10 = div10(vp);
   const uint64 vmDiv10 = div10(vm);

   if (vpDiv10 <= vmDiv10)
    break;

   const uint32 vmMod10 = (uint32) (vm - 10 * vmDiv10);
   const uint64 vrDiv10 = div10(vr);
   const uint32 vrMod10 = (uint32) (vr - 10 * vrDiv10);

   vmIsTrailingZeros &= vmMod10 == 0;
   vrIsTrailingZeros &= lastRemovedDigit == 0;
   lastRemovedDigit = (uint8) vrMod10;
   vr = vrDiv10;
   vp = vpDiv10;
   vm = vmDiv10;
   ++removed;
  }

  if (vmIsTrailingZeros)
  {
   for (;;)
   {
    const uint64 vmDiv10 = div10(vm);
    const uint32 vmMod10 = (uint32) (vm - 10 * vmDiv10);

    if (vmMod10 != 0)
     break;

    const uint64 vpDiv10 = div10(vp);
    const uint64 vrDiv10 = div10(vr);
    const uint32 vrMod10 = (uint32) (vr - 10 * vrDiv10);

    vrIsTrailingZeros &= lastRemovedDigit == 0;
    lastRemovedDigit = (uint8) vrMod10;
    vr = vrDiv10;
    vp = vpDiv10;
    vm = vmDiv10;
    ++removed;
   }
  }

  if (vrIsTrailingZeros && lastRemovedDigit == 5 && vr % 2 == 0)
  {

   lastRemovedDigit = 4;
  }





  output = vr + ((vr == vm && (!acceptBounds || !vmIsTrailingZeros)) || lastRemovedDigit >= 5);
 }
 else
 {




  bool roundUp = 0;
  const uint64 vpDiv100 = div100(vp);
  const uint64 vmDiv100 = div100(vm);

  if (vpDiv100 > vmDiv100)
  {

   const uint64 vrDiv100 = div100(vr);
   const uint32 vrMod100 = (uint32) (vr - 100 * vrDiv100);

   roundUp = vrMod100 >= 50;
   vr = vrDiv100;
   vp = vpDiv100;
   vm = vmDiv100;
   removed += 2;
  }
  for (;;)
  {
   const uint64 vpDiv10 = div10(vp);
   const uint64 vmDiv10 = div10(vm);

   if (vpDiv10 <= vmDiv10)
    break;

   const uint64 vrDiv10 = div10(vr);
   const uint32 vrMod10 = (uint32) (vr - 10 * vrDiv10);

   roundUp = vrMod10 >= 5;
   vr = vrDiv10;
   vp = vpDiv10;
   vm = vmDiv10;
   ++removed;
  }





  output = vr + (vr == vm || roundUp);
 }

 const int32 exp = e10 + removed;

 floating_decimal_64 fd;

 fd.exponent = exp;
 fd.mantissa = output;
 return fd;
}
