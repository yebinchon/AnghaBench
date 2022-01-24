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
struct ep_func {char* name; char* ret_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ep_func*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(struct ep_func *epf, char *ret_type, char *name)
{
	FUNC0(epf, 0, sizeof(struct ep_func));
	epf->name = name;
	epf->ret_type = ret_type;
}