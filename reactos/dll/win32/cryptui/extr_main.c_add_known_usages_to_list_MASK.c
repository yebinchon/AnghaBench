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
typedef  scalar_t__ PCCRYPT_OID_INFO ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  CheckBitmapIndex ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(HWND lv, CheckBitmapIndex state)
{
    PCCRYPT_OID_INFO *usages;

    if (FUNC0(1, &usages))
    {
        PCCRYPT_OID_INFO *ptr;

        for (ptr = usages; *ptr; ptr++)
            FUNC1(lv, *ptr, state);
        FUNC0(2, &usages);
    }
}