#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mask; int /*<<< orphan*/  name; } ;
typedef  int DWORD ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* cfflags ; 

__attribute__((used)) static void FUNC2(DWORD cflags)
{
    unsigned int i;

    for (i = 0; i < FUNC0(cfflags); i++)
        if (cfflags[i].mask & cflags)
            FUNC1("%s|",cfflags[i].name);
    FUNC1("\n");
}