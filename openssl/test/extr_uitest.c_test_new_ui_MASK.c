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
typedef  int /*<<< orphan*/  pass ;
struct TYPE_3__ {char* member_0; char* member_1; int /*<<< orphan*/  password; } ;
typedef  TYPE_1__ PW_CB_DATA ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(void)
{
    PW_CB_DATA cb_data = {
        "password",
        "prompt"
    };
    char pass[16];
    int ok = 0;

    FUNC4();
    if (FUNC0(FUNC3(pass, sizeof(pass), 0, &cb_data), 0)
            && FUNC1(pass, cb_data.password))
        ok = 1;
    FUNC2();
    return ok;
}