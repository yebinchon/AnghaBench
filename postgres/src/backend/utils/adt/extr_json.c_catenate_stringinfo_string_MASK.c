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
typedef  int /*<<< orphan*/  text ;
struct TYPE_3__ {int len; char const* data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static text *
FUNC5(StringInfo buffer, const char *addon)
{
	/* custom version of cstring_to_text_with_len */
	int			buflen = buffer->len;
	int			addlen = FUNC4(addon);
	text	   *result = (text *) FUNC3(buflen + addlen + VARHDRSZ);

	FUNC0(result, buflen + addlen + VARHDRSZ);
	FUNC2(FUNC1(result), buffer->data, buflen);
	FUNC2(FUNC1(result) + buflen, addon, addlen);

	return result;
}