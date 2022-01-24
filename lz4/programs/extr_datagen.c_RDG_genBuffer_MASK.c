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
typedef  int /*<<< orphan*/  litDistribTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,unsigned int*) ; 

void FUNC2(void* buffer, size_t size, double matchProba, double litProba, unsigned seed)
{
    litDistribTable lt;
    if (litProba==0.0) litProba = matchProba / 4.5;
    FUNC0(lt, litProba);
    FUNC1(buffer, size, 0, matchProba, lt, &seed);
}