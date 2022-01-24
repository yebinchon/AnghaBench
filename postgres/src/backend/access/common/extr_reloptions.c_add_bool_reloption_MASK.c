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
typedef  int /*<<< orphan*/  relopt_gen ;
struct TYPE_2__ {int default_val; } ;
typedef  TYPE_1__ relopt_bool ;
typedef  int /*<<< orphan*/  bits32 ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  RELOPT_TYPE_BOOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ) ; 

void
FUNC2(bits32 kinds, const char *name, const char *desc,
				   bool default_val, LOCKMODE lockmode)
{
	relopt_bool *newoption;

	newoption = (relopt_bool *) FUNC1(kinds, RELOPT_TYPE_BOOL,
												   name, desc, lockmode);
	newoption->default_val = default_val;

	FUNC0((relopt_gen *) newoption);
}