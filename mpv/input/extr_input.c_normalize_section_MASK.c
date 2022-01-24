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
struct input_ctx {int dummy; } ;
struct TYPE_2__ {char* section; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (struct input_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC2(struct input_ctx *ictx, char *name)
{
    return FUNC1(ictx, FUNC0(name))->section;
}