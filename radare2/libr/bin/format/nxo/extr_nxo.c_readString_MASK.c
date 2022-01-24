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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  symbol ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(RBuffer *buf, int off) {
	char symbol[128]; // assume 128 as max symbol name length
	int left = FUNC0 (buf, off, (ut8*)symbol, sizeof (symbol));
	if (left < 1) {
		return NULL;
	}
	symbol[sizeof (symbol) - 1] = 0;
	return FUNC1 (symbol);
}