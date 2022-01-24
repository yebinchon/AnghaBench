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
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  encodeTypePtr ;
typedef  int /*<<< orphan*/  encodePtr ;

/* Variables and functions */
 int /*<<< orphan*/  IS_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static xmlNodePtr FUNC3(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
	encodePtr  enc;
	xmlNodePtr ret;

	if (data) {
		enc = FUNC1(FUNC0(data));
	} else {
		enc = FUNC1(IS_NULL);
	}
	ret = FUNC2(enc, data, style, parent, 0);
/*
	if (style == SOAP_LITERAL && SOAP_GLOBAL(sdl)) {
		set_ns_and_type(ret, &enc->details);
	}
*/
	return ret;
}