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
 size_t FUNC0 (char* const,int,size_t const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char* const) ; 
 scalar_t__ FUNC2 (size_t const) ; 
 int FUNC3 (char* const,char* const,size_t const) ; 

__attribute__((used)) static int FUNC4(FILE* f0, FILE* f1)
{
    int result = 0;
    const size_t tempBufferBytes = 65536;
    char* const b0 = (char*) FUNC2(tempBufferBytes);
    char* const b1 = (char*) FUNC2(tempBufferBytes);

    while(0 == result)
    {
        const size_t r0 = FUNC0(b0, 1, tempBufferBytes, f0);
        const size_t r1 = FUNC0(b1, 1, tempBufferBytes, f1);

        result = (int) r0 - (int) r1;

        if (0 == r0 || 0 == r1) break;
        if (0 == result) result = FUNC3(b0, b1, r0);
    }

    FUNC1(b1);
    FUNC1(b0);
    return result;
}