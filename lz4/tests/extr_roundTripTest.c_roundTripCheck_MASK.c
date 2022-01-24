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
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (void* const) ; 
 void* FUNC4 (size_t const) ; 
 int /*<<< orphan*/  FUNC5 (void* const,size_t const,void* const,size_t const,void const*,size_t,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(const void* srcBuff, size_t srcSize, int clevel)
{
    size_t const cBuffSize = FUNC0((int)srcSize);
    void* const cBuff = FUNC4(cBuffSize);
    void* const rBuff = FUNC4(cBuffSize);

    if (!cBuff || !rBuff) {
        FUNC2(stderr, "not enough memory ! \n");
        FUNC1(1);
    }

    FUNC5(rBuff, cBuffSize,
                  cBuff, cBuffSize,
                  srcBuff, srcSize,
                  clevel);

    FUNC3(rBuff);
    FUNC3(cBuff);
}