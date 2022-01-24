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
typedef  int /*<<< orphan*/  HKL ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 unsigned short ALT_FLAG ; 
 unsigned short CTRL_A ; 
 unsigned short CTRL_FLAG ; 
 unsigned short CTRL_Z ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned int,int,int /*<<< orphan*/ *,unsigned short*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VK_MENU ; 

__attribute__((used)) static int FUNC5(unsigned int vk)
{
    unsigned short int s;
    int                scan;
    BYTE               state[256];
    HKL                layout=FUNC1(0);

    if(!FUNC2(state))
        return 0;

    scan=FUNC3(vk, 0, layout);
    s = 0;
    if (FUNC4(vk, scan, state, &s, 0, layout)>0) {
        /* convert to upper case */
        if (s >= 'a' && s <= 'z')
            s = s - 'a' + 'A';
        /* add check to CTRL key */
        if (vk >= 'A' && vk <= 'Z' &&
            s >= CTRL_A && s <= CTRL_Z)
            s |= CTRL_FLAG;
        else
        if (FUNC0(VK_MENU) < 0)
            s |= ALT_FLAG;
        return s;
    }
    return 0;
}