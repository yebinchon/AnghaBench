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
struct dstr {char* array; size_t capacity; size_t len; } ;

/* Variables and functions */
 char* FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char*,char*) ; 

__attribute__((used)) static char *FUNC2(const char *str, size_t len)
{
	struct dstr out;
	out.array = FUNC0(str, len);
	out.capacity = len + 1;
	out.len = len;

	FUNC1(&out, "\\n", "\n");
	FUNC1(&out, "\\t", "\t");
	FUNC1(&out, "\\r", "\r");
	FUNC1(&out, "\\\"", "\"");

	return out.array;
}