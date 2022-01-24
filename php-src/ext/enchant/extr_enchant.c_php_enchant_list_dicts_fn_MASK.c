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
typedef  int /*<<< orphan*/  zval ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( const char * const lang_tag,
	   	const char * const provider_name, const char * const provider_desc,
		const char * const provider_file, void * ud) /* {{{ */
{
	zval *zdesc = (zval *) ud;
	zval tmp_array;

	FUNC3(&tmp_array);
	FUNC1(&tmp_array, "lang_tag", (char *)lang_tag);
	FUNC1(&tmp_array, "provider_name", (char *)provider_name);
	FUNC1(&tmp_array, "provider_desc", (char *)provider_desc);
	FUNC1(&tmp_array, "provider_file", (char *)provider_file);

	if (FUNC0(zdesc) != IS_ARRAY) {
		FUNC3(zdesc);
	}
	FUNC2(zdesc, &tmp_array);

}