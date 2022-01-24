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
typedef  scalar_t__ ULONG ;
typedef  char* PCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__) ; 
 size_t FUNC1 (char*) ; 

ULONG FUNC2(PCSTR Path)
{
    size_t i;
    size_t len;
    ULONG  num;
    
    len = FUNC1(Path);

    for (i = 0, num = 0; i < len; i++)
    {
        if ((Path[i] == '\\') || (Path[i] == '/'))
        {
            num++;
        }
    }
    num++;

    FUNC0("FsGetNumPathParts() Path = %s NumPathParts = %d\n", Path, num);

    return num;
}