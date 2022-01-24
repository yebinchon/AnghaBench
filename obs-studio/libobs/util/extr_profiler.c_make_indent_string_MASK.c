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
typedef  size_t uint64_t ;
struct dstr {scalar_t__ len; } ;

/* Variables and functions */
 char* DOWN_RIGHT ; 
 char* VPIPE ; 
 char* VPIPE_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dstr *indent_buffer, unsigned indent,
			       uint64_t active)
{
	indent_buffer->len = 0;

	if (!indent) {
		FUNC1(indent_buffer, 0);
		return;
	}

	for (size_t i = 0; i < indent; i++) {
		const char *fragment = "";
		bool last = i + 1 == indent;
		if (active & ((uint64_t)1 << i))
			fragment = last ? VPIPE_RIGHT : VPIPE;
		else
			fragment = last ? DOWN_RIGHT : "  ";

		FUNC0(indent_buffer, fragment);
	}
}