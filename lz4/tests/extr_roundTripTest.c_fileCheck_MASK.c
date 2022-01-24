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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void* const) ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (void* const,char const*,size_t const) ; 
 void* FUNC5 (size_t const) ; 
 int /*<<< orphan*/  FUNC6 (void* const,size_t const,int) ; 

__attribute__((used)) static void FUNC7(const char* fileName, int clevel)
{
    size_t const fileSize = FUNC3(fileName);
    void* const buffer = FUNC5(fileSize + !fileSize /* avoid 0 */);
    if (!buffer) {
        FUNC0("not enough memory \n");
        FUNC1(4);
    }
    FUNC4(buffer, fileName, fileSize);
    FUNC6(buffer, fileSize, clevel);
    FUNC2 (buffer);
}