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
typedef  int /*<<< orphan*/  OSSL_NAMEMAP ;

/* Variables and functions */
 char* ALIAS1 ; 
 char* ALIAS1_UC ; 
 char* NAME1 ; 
 char* NAME2 ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(OSSL_NAMEMAP *nm)
{
    int num1 = FUNC2(nm, 0, NAME1);
    int num2 = FUNC2(nm, 0, NAME2);
    int num3 = FUNC2(nm, num1, ALIAS1);
    int num4 = FUNC2(nm, 0, ALIAS1_UC);
    int check1 = FUNC3(nm, NAME1);
    int check2 = FUNC3(nm, NAME2);
    int check3 = FUNC3(nm, ALIAS1);
    int check4 = FUNC3(nm, ALIAS1_UC);
    int false1 = FUNC3(nm, "foo");

    return FUNC1(num1, 0)
        && FUNC1(num2, 0)
        && FUNC0(num1, num3)
        && FUNC0(num3, num4)
        && FUNC0(num1, check1)
        && FUNC0(num2, check2)
        && FUNC0(num3, check3)
        && FUNC0(num4, check4)
        && FUNC0(false1, 0);
}