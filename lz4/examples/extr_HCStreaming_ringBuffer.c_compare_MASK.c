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
typedef  int /*<<< orphan*/  b1 ;
typedef  int /*<<< orphan*/  b0 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,char*,size_t const) ; 

size_t FUNC2(FILE* f0, FILE* f1)
{
    size_t result = 1;

    for (;;) {
        char b0[65536];
        char b1[65536];
        const size_t r0 = FUNC0(b0, 1, sizeof(b0), f0);
        const size_t r1 = FUNC0(b1, 1, sizeof(b1), f1);

        if ((r0==0) && (r1==0)) return 0;   // success

        if (r0 != r1) {
            size_t smallest = r0;
            if (r1<r0) smallest = r1;
            result += smallest;
            break;
        }

        if (FUNC1(b0, b1, r0)) {
            unsigned errorPos = 0;
            while ((errorPos < r0) && (b0[errorPos]==b1[errorPos])) errorPos++;
            result += errorPos;
            break;
        }

        result += sizeof(b0);
    }

    return result;
}