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
struct TYPE_3__ {char* value; } ;
typedef  TYPE_1__ RConfigNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static bool FUNC3(void *user, void *data) {
	RConfigNode *node = (RConfigNode*) data;
	if (*node->value == '?') {
		if (FUNC2 (node->value) > 1 && node->value[1] == '?') {
			FUNC1 ("Concatenation of meta types encoded as characters:\n" \
				"'d': data\n'c': code\n's': string\n'f': format\n'm': magic\n" \
				"'h': hide\n'C': comment\n'r': run\n" \
				"(default is 'ds' to skip data and strings)\n");
		} else {
			FUNC0 (node);
		}
		return false;
	}
	return true;
}