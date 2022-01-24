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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* hexChars ; 
 int /*<<< orphan*/  persist ; 
 scalar_t__ FUNC1 (size_t,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const char *digest, size_t digest_len, char **signature) /* {{{ */
{
	int pos = -1;
	size_t len = 0;

	*signature = (char*)FUNC1(digest_len, 2, 1, FUNC0(persist));

	for (; len < digest_len; ++len) {
		(*signature)[++pos] = hexChars[((const unsigned char *)digest)[len] >> 4];
		(*signature)[++pos] = hexChars[((const unsigned char *)digest)[len] & 0x0F];
	}
	(*signature)[++pos] = '\0';
	return pos;
}