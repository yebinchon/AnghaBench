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
struct TYPE_2__ {char* buffer; int /*<<< orphan*/ * buf_ptr; } ;
typedef  int /*<<< orphan*/  TCCState ;

/* Variables and functions */
 int /*<<< orphan*/  ch ; 
 TYPE_1__* file ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC6(TCCState *s1, const char *sym, const char *value)
{
	int len1, len2;
	/* default value */
	if (!value) {
		value = "1";
	}
	len1 = FUNC3 (sym);
	len2 = FUNC3 (value);

	/* init file structure */
	FUNC5 (s1, "<define>", len1 + len2 + 1);
	FUNC0 (file->buffer, sym, len1);
	file->buffer[len1] = ' ';
	FUNC0 (file->buffer + len1 + 1, value, len2);

	/* parse with define parser */
	ch = file->buf_ptr[0];
	FUNC1 ();
	FUNC2 ();

	FUNC4 ();
}