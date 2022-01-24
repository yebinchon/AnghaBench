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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (char*,char*,size_t const) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int FUNC3(FILE* fp0, FILE* fp1, int length)
{
    int result = 0;

    while(0 == result) {
        char b0[4096];
        char b1[4096];
        const size_t r0 = FUNC2(fp0, b0, FUNC0(length, (int)sizeof(b0)));
        const size_t r1 = FUNC2(fp1, b1, FUNC0(length, (int)sizeof(b1)));

        result = (int) r0 - (int) r1;

        if(0 == r0 || 0 == r1) {
            break;
        }
        if(0 == result) {
            result = FUNC1(b0, b1, r0);
        }
        length -= r0;
    }

    return result;
}