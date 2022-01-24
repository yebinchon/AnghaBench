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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int const) ; 
 char* FUNC1 (char*,char) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(char *b) {
	const int len = FUNC2 (b);
	char *one = FUNC1 (b, '1');
	int pos = one ? (int)(size_t)(one - b) : len - 1;
	pos = (pos / 8) * 8;
	FUNC0 (b, b + pos, len - pos + 1);
}