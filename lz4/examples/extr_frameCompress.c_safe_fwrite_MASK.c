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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC4 (void*,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(void* buf, size_t eltSize, size_t nbElt, FILE* f)
{
    size_t const writtenSize = FUNC4(buf, eltSize, nbElt, f);
    size_t const expectedSize = eltSize * nbElt;
    if (nbElt>0) FUNC0(expectedSize / nbElt == eltSize);  /* check overflow */
    if (writtenSize < expectedSize) {
        if (FUNC2(f))  /* note : ferror() must follow fwrite */
            FUNC3(stderr, "Write failed \n");
        else
            FUNC3(stderr, "Write too short \n");
        FUNC1(1);
    }
}