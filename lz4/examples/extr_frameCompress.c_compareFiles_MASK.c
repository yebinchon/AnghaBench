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
 int FUNC1 (char*,char*,size_t const) ; 

int FUNC2(FILE* fp0, FILE* fp1)
{
    int result = 0;

    while (result==0) {
        char b0[1024];
        char b1[1024];
        size_t const r0 = FUNC0(b0, 1, sizeof(b0), fp0);
        size_t const r1 = FUNC0(b1, 1, sizeof(b1), fp1);

        result = (r0 != r1);
        if (!r0 || !r1) break;
        if (!result) result = FUNC1(b0, b1, r0);
    }

    return result;
}