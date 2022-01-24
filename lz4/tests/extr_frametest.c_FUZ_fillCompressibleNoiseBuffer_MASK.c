#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int U32 ;
typedef  scalar_t__ BYTE ;

/* Variables and functions */
 int FUZ_RAND15BITS ; 
 int FUZ_RANDLENGTH ; 
 int FUNC0 (int*) ; 
 size_t FUNC1 (size_t const,size_t) ; 

__attribute__((used)) static void FUNC2(void* buffer, size_t bufferSize, double proba, U32* seed)
{
    BYTE* BBuffer = (BYTE*)buffer;
    size_t pos = 0;
    U32 P32 = (U32)(32768 * proba);

    /* First Byte */
    BBuffer[pos++] = (BYTE)(FUNC0(seed));

    while (pos < bufferSize) {
        /* Select : Literal (noise) or copy (within 64K) */
        if (FUZ_RAND15BITS < P32) {
            /* Copy (within 64K) */
            size_t const lengthRand = FUZ_RANDLENGTH + 4;
            size_t const length = FUNC1(lengthRand, bufferSize - pos);
            size_t const end = pos + length;
            size_t const offsetRand = FUZ_RAND15BITS + 1;
            size_t const offset = FUNC1(offsetRand, pos);
            size_t match = pos - offset;
            while (pos < end) BBuffer[pos++] = BBuffer[match++];
        } else {
            /* Literal (noise) */
            size_t const lengthRand = FUZ_RANDLENGTH + 4;
            size_t const length = FUNC1(lengthRand, bufferSize - pos);
            size_t const end = pos + length;
            while (pos < end) BBuffer[pos++] = (BYTE)(FUNC0(seed) >> 5);
    }   }
}