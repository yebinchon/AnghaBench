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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  RAsmOp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int*,int*,int*) ; 

__attribute__((used)) static inline int FUNC5(RAsmOp *op, char *input) {
	int i, repeat = 0, size=0, value=0;
	FUNC4 (input, "%d,%d,%d", &repeat, &size, &value); // use r_num?
	size *= (sizeof (value) * repeat);
	if (size > 0) {
		ut8 *buf = FUNC1 (size);
		for (i = 0; i < size; i+= sizeof(value)) {
			FUNC2 (&buf[i], &value, sizeof(value));
		}
		FUNC3 (op, buf, size);
		FUNC0 (buf);
	} else {
		size = 0;
	}
	return size;
}