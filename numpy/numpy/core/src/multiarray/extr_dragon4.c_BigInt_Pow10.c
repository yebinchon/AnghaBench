
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint32 ;
typedef int BigInt ;


 int BigInt_Copy (int *,int *) ;
 int BigInt_Multiply (int *,int *,int *) ;
 int BigInt_Set_uint32 (int *,int ) ;
 int DEBUG_ASSERT (int) ;
 int bitmask_u32 (int) ;
 int * g_PowerOf10_Big ;
 int * g_PowerOf10_U32 ;

__attribute__((used)) static void
BigInt_Pow10(BigInt *result, npy_uint32 exponent, BigInt *temp)
{

    BigInt *curTemp = result;
    BigInt *pNextTemp = temp;
    npy_uint32 smallExponent;
    npy_uint32 tableIdx = 0;


    DEBUG_ASSERT(exponent < 8192);





    smallExponent = exponent & bitmask_u32(3);
    BigInt_Set_uint32(curTemp, g_PowerOf10_U32[smallExponent]);


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


    if (curTemp != result) {
        BigInt_Copy(result, curTemp);
    }
}
