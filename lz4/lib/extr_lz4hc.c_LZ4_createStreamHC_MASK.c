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
typedef  int /*<<< orphan*/  LZ4_streamHC_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int) ; 

LZ4_streamHC_t* FUNC2(void)
{
    LZ4_streamHC_t* const LZ4_streamHCPtr = (LZ4_streamHC_t*)FUNC0(sizeof(LZ4_streamHC_t));
    if (LZ4_streamHCPtr==NULL) return NULL;
    FUNC1(LZ4_streamHCPtr, sizeof(*LZ4_streamHCPtr));  /* full initialization, malloc'ed buffer can be full of garbage */
    return LZ4_streamHCPtr;
}