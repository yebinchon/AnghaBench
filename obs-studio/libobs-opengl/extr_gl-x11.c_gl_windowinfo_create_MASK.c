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
struct gs_init_data {int dummy; } ;
struct gl_windowinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gs_init_data const*) ; 
 struct gl_windowinfo* FUNC1 (int) ; 

extern struct gl_windowinfo *
FUNC2(const struct gs_init_data *info)
{
	FUNC0(info);
	return FUNC1(sizeof(struct gl_windowinfo));
}