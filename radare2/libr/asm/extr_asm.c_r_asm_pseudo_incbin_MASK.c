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
struct TYPE_3__ {int /*<<< orphan*/  buf_inc; } ;
typedef  TYPE_1__ RAsmOp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static inline int FUNC8(RAsmOp *op, char *input) {
	int bytes_read = 0;
	FUNC5 (input, ',', ' ');
	// int len = r_str_word_count (input);
	FUNC7 (input);
	//const char *filename = r_str_word_get0 (input, 0);
	int skip = (int)FUNC4 (NULL, FUNC6 (input, 1));
	int count = (int)FUNC4 (NULL,FUNC6 (input, 2));
	char *content = FUNC3 (input, &bytes_read);
	if (skip > 0) {
		skip = skip > bytes_read ? bytes_read : skip;
	}
	if (count > 0) {
		count = count > bytes_read ? 0 : count;
	} else {
		count = bytes_read;
	}
	// Need to handle arbitrary amount of data
	FUNC1 (op->buf_inc);
	op->buf_inc = FUNC2 (content + skip);
	// Terminate the original buffer
	FUNC0 (content);
	return count;
}