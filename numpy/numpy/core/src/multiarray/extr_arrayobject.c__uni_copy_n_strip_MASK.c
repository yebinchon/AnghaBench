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
typedef  int /*<<< orphan*/  npy_ucs4 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int SMALL_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC4(char *original, char *temp, int nc)
{
    if (nc*sizeof(npy_ucs4) > SMALL_STRING) {
        temp = FUNC2(nc*sizeof(npy_ucs4));
        if (!temp) {
            FUNC0();
            return NULL;
        }
    }
    FUNC3(temp, original, nc*sizeof(npy_ucs4));
    FUNC1((npy_ucs4 *)temp, nc);
    return temp;
}