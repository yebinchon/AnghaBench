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
struct vo {scalar_t__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*) ; 
 scalar_t__ FUNC3 (struct vo*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct vo*) ; 

__attribute__((used)) static void FUNC5(struct vo *vo)
{
    FUNC1(vo, "Recreating renderer after display change.\n");

    FUNC2(vo);
    FUNC4(vo);

    if (vo->params) {
        if (FUNC3(vo, vo->params) < 0)
            FUNC0(vo, "Recreation failed.\n");
    }
}