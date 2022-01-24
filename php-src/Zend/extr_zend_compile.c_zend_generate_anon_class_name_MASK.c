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
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_2__ {int /*<<< orphan*/ * filename; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  active_op_array ; 
 size_t FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_string *FUNC6(unsigned char *lex_pos) /* {{{ */
{
	zend_string *result;
	char char_pos_buf[32];
	size_t char_pos_len = FUNC3(char_pos_buf, "%p", lex_pos);
	zend_string *filename = FUNC0(active_op_array)->filename;

	/* NULL, name length, filename length, last accepting char position length */
	result = FUNC5(sizeof("class@anonymous") + FUNC1(filename) + char_pos_len, 0);
	FUNC3(FUNC2(result), "class@anonymous%c%s%s", '\0', FUNC2(filename), char_pos_buf);
	return FUNC4(result);
}