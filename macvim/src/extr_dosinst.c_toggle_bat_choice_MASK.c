#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t arg; } ;
struct TYPE_3__ {char* batpath; char* oldbat; } ;

/* Variables and functions */
 char NUL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 TYPE_2__* choices ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 TYPE_1__* targets ; 

__attribute__((used)) static void
FUNC2(int idx)
{
    char	*batname = targets[choices[idx].arg].batpath;
    char	*oldname = targets[choices[idx].arg].oldbat;

    if (*batname == NUL)
    {
	FUNC0(idx, "    Overwrite %s", oldname);
	FUNC1(batname, oldname);
    }
    else
    {
	FUNC0(idx, "    Do NOT overwrite %s", oldname);
	*batname = NUL;
    }
}