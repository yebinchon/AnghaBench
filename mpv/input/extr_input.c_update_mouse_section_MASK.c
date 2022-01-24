#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct input_ctx {char* mouse_section; } ;
struct cmd_bind {TYPE_1__* owner; } ;
struct TYPE_2__ {char* section; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_KEY_MOUSE_LEAVE ; 
 int /*<<< orphan*/  MP_KEY_MOUSE_MOVE ; 
 int /*<<< orphan*/  FUNC0 (struct input_ctx*,char*,char*,char*) ; 
 struct cmd_bind* FUNC1 (struct input_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_ctx*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_ctx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(struct input_ctx *ictx)
{
    struct cmd_bind *bind =
        FUNC1(ictx, NULL, MP_KEY_MOUSE_MOVE);

    char *new_section = bind ? bind->owner->section : "default";

    char *old = ictx->mouse_section;
    ictx->mouse_section = new_section;

    if (FUNC4(old, ictx->mouse_section) != 0) {
        FUNC0(ictx, "input: switch section %s -> %s\n",
                 old, ictx->mouse_section);
        FUNC3(ictx, FUNC2(ictx, old, MP_KEY_MOUSE_LEAVE));
    }
}