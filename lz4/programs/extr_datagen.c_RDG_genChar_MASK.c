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
typedef  int /*<<< orphan*/ * litDistribTable ;
typedef  size_t U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t LTMASK ; 
 size_t FUNC0 (size_t*) ; 

__attribute__((used)) static BYTE FUNC1(U32* seed, const litDistribTable lt)
{
    U32 id = FUNC0(seed) & LTMASK;
    return (lt[id]);
}