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

__attribute__((used)) static bool FUNC2 (void *user, void *data) {
	RConfigNode *node = (RConfigNode *)data;
	if (node->value[0] == '?') {
		FUNC0 (node);
		FUNC1 ("  -- if string's 2nd & 4th bytes are 0 then utf16le else "
		               "if 2nd - 4th & 6th bytes are 0 & no char > 0x10ffff then utf32le else "
		               "if utf8 char detected then utf8 else latin1\n");
		return false;
	}
	return true;
}