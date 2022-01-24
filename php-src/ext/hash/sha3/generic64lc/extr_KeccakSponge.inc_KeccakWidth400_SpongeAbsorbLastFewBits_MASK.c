#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int rate; int squeezing; unsigned int byteIOIndex; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ SpongeInstance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SnP_width ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 

int FUNC5(SpongeInstance *instance, unsigned char delimitedData)
{
    unsigned int rateInBytes = instance->rate/8;

    if (delimitedData == 0)
        return 1;
    if (instance->squeezing)
        return 1; /* Too late for additional input */

    #ifdef KeccakReference
    {
        unsigned char delimitedData1[1];
        delimitedData1[0] = delimitedData;
        displayBytes(1, "Block to be absorbed (last few bits + first bit of padding)", delimitedData1, 1);
    }
    #endif
    /* Last few bits, whose delimiter coincides with first bit of padding */
    FUNC0(instance->state, delimitedData, instance->byteIOIndex);
    /* If the first bit of padding is at position rate-1, we need a whole new block for the second bit of padding */
    if ((delimitedData >= 0x80) && (instance->byteIOIndex == (rateInBytes-1)))
        FUNC1(instance->state);
    /* Second bit of padding */
    FUNC0(instance->state, 0x80, rateInBytes-1);
    #ifdef KeccakReference
    {
        unsigned char block[SnP_width/8];
        memset(block, 0, SnP_width/8);
        block[rateInBytes-1] = 0x80;
        displayBytes(1, "Second bit of padding", block, rateInBytes);
    }
    #endif
    FUNC1(instance->state);
    instance->byteIOIndex = 0;
    instance->squeezing = 1;
    #ifdef KeccakReference
    displayText(1, "--- Switching to squeezing phase ---");
    #endif
    return 0;
}