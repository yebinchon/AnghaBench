#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlBufferPtr ;
typedef  TYPE_2__* encodeTypePtr ;
struct TYPE_5__ {TYPE_1__* map; } ;
struct TYPE_4__ {int /*<<< orphan*/  to_zval; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_ERROR ; 
 scalar_t__ FAILURE ; 
 scalar_t__ IS_UNDEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exception ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

zval *FUNC13(zval *ret, encodeTypePtr type, xmlNodePtr node)
{
	if (type && type->map && FUNC3(type->map->to_zval) != IS_UNDEF) {
		xmlBufferPtr buf;
		zval data;
		xmlNodePtr copy;

		copy = FUNC9(node, 1);
		buf = FUNC7();
		FUNC11(buf, NULL, copy, 0, 0);
		FUNC2(&data, (char*)FUNC6(buf));
		FUNC8(buf);
		FUNC10(copy);

		if (FUNC4(NULL, NULL, &type->map->to_zval, ret, 1, &data) == FAILURE) {
			FUNC5(E_ERROR, "Encoding: Error calling from_xml callback");
		} else if (FUNC0(exception)) {
			FUNC1(ret);
		}
		FUNC12(&data);
	} else {
		FUNC1(ret);
	}
	return ret;
}