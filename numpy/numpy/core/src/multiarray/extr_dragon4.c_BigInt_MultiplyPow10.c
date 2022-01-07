
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint32 ;
typedef int BigInt ;


 int BigInt_Copy (int *,int *) ;
 int BigInt_Multiply (int *,int *,int *) ;
 int BigInt_Multiply_int (int *,int *,int ) ;
 int DEBUG_ASSERT (int) ;
 int bitmask_u32 (int) ;
 int * g_PowerOf10_Big ;
 int * g_PowerOf10_U32 ;

__attribute__((used)) static void
BigInt_MultiplyPow10(BigInt *in, npy_uint32 exponent, BigInt *temp)
{

    BigInt *curTemp, *pNextTemp;
    npy_uint32 smallExponent;
    npy_uint32 tableIdx = 0;


    DEBUG_ASSERT(exponent < 8192);





    smallExponent = exponent & bitmask_u32(3);
    if (smallExponent != 0) {
        BigInt_Multiply_int(temp, in, g_PowerOf10_U32[smallExponent]);
        curTemp = temp;
        pNextTemp = in;
    }
    else {
        curTemp = in;
        pNextTemp = temp;
    }


    exponent >>= 3;


    while (exponent != 0) {

        if (exponent & 1) {
            BigInt *pSwap;


            BigInt_Multiply(pNextTemp, curTemp, &g_PowerOf10_Big[tableIdx]);


            pSwap = curTemp;
            curTemp = pNextTemp;
            pNextTemp = pSwap;
        }


        ++tableIdx;
        exponent >>= 1;
    }


    if (curTemp != in){
        BigInt_Copy(in, curTemp);
    }
}
