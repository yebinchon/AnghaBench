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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 size_t FUNC4 (void*,int,size_t,int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(void* buffer, const char* fileName, size_t fileSize)
{
    FILE* const f = FUNC3(fileName, "rb");
    if (FUNC5(fileName)) {
        FUNC0("Ignoring %s directory \n", fileName);
        FUNC1(2);
    }
    if (f==NULL) {
        FUNC0("Impossible to open %s \n", fileName);
        FUNC1(3);
    }
    {   size_t const readSize = FUNC4(buffer, 1, fileSize, f);
        if (readSize != fileSize) {
            FUNC0("Error reading %s \n", fileName);
            FUNC1(5);
    }   }
    FUNC2(f);
}