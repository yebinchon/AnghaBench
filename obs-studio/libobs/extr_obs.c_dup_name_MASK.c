#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dstr {char* array; int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {int /*<<< orphan*/  unnamed_index; } ;
struct TYPE_4__ {TYPE_1__ data; } ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* obs ; 

__attribute__((used)) static inline char *FUNC2(const char *name, bool private)
{
	if (private && !name)
		return NULL;

	if (!name || !*name) {
		struct dstr unnamed = {0};
		FUNC1(&unnamed, "__unnamed%04lld",
			    obs->data.unnamed_index++);

		return unnamed.array;
	} else {
		return FUNC0(name);
	}
}