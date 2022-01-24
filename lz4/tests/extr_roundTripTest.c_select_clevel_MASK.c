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

/* Variables and functions */
 int LZ4HC_CLEVEL_MAX ; 
 size_t FUNC0 (int,size_t) ; 
 int MIN_CLEVEL ; 
 unsigned int FUNC1 (void const*,size_t const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const void* refBuff, size_t refBuffSize)
{
    const int minCLevel = MIN_CLEVEL;
    const int maxClevel = LZ4HC_CLEVEL_MAX;
    const int cLevelSpan = maxClevel - minCLevel;
    size_t const hashLength = FUNC0(16, refBuffSize);
    unsigned const h32 = FUNC1(refBuff, hashLength, 0);
    int const randL = h32 % (cLevelSpan+1);

    return minCLevel + randL;
}