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
struct TYPE_2__ {int /*<<< orphan*/  error_list; } ;
struct shader_parser {TYPE_1__ cfp; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline char *FUNC1(struct shader_parser *sp)
{
	return FUNC0(&sp->cfp.error_list);
}