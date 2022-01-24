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
struct TYPE_3__ {int /*<<< orphan*/  section; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ CONF_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  section_names ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(CONF_VALUE *v)
{
    /* A section is a CONF_VALUE with name == NULL */
    if (v->name == NULL)
        FUNC0(section_names, v->section);
}