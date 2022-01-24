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
typedef  int DWORD ;

/* Variables and functions */
 int DIDEVTYPEKEYBOARD_JAPAN106 ; 
 int DIDEVTYPEKEYBOARD_PCENH ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static DWORD FUNC2(void)
{
    DWORD kbd_type, kbd_subtype, dev_subtype;
    kbd_type = FUNC1(0);
    kbd_subtype = FUNC1(1);

    if (kbd_type == 4 || (kbd_type == 7 && kbd_subtype == 0))
        dev_subtype = DIDEVTYPEKEYBOARD_PCENH;
    else if (kbd_type == 7 && kbd_subtype == 2)
        dev_subtype = DIDEVTYPEKEYBOARD_JAPAN106;
    else {
        FUNC0("Unknown keyboard type=%u, subtype=%u\n", kbd_type, kbd_subtype);
        dev_subtype = DIDEVTYPEKEYBOARD_PCENH;
    }
    return dev_subtype;
}