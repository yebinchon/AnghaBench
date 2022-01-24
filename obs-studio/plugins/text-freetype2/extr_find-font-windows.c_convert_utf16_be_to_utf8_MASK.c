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
typedef  int wchar_t ;
struct TYPE_3__ {int string_len; int /*<<< orphan*/ * string; } ;
typedef  TYPE_1__ FT_SfntName ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (size_t) ; 
 char* FUNC2 (int*,size_t) ; 

__attribute__((used)) static char *FUNC3(FT_SfntName *sfnt_name)
{
	size_t utf16_len = sfnt_name->string_len / 2;
	wchar_t *utf16_str = FUNC1((utf16_len + 1) * sizeof(wchar_t));
	char *utf8_str = NULL;

	utf16_str[utf16_len] = 0;

	/* convert to little endian */
	for (size_t i = 0; i < utf16_len; i++) {
		size_t pos = i * 2;
		wchar_t ch = *(wchar_t *)&sfnt_name->string[pos];

		utf16_str[i] = ((ch >> 8) & 0xFF) | ((ch << 8) & 0xFF00);
	}

	utf8_str = FUNC2(utf16_str, utf16_len);

	FUNC0(utf16_str);
	return utf8_str;
}