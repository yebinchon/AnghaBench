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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char const*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(FILE* file, unsigned storedSkips)
{
    if (storedSkips>0) {   /* implies g_sparseFileSupport>0 */
        int const seekResult = FUNC1(file, storedSkips-1, SEEK_CUR);
        if (seekResult != 0) FUNC0(69, "Final skip error (sparse file)\n");
        {   const char lastZeroByte[1] = { 0 };
            size_t const sizeCheck = FUNC2(lastZeroByte, 1, 1, file);
            if (sizeCheck != 1) FUNC0(69, "Write error : cannot write last zero\n");
    }   }
}