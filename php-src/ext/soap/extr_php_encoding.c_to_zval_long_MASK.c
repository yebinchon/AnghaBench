#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_long ;
typedef  TYPE_2__* xmlNodePtr ;
typedef  int /*<<< orphan*/  encodeTypePtr ;
struct TYPE_6__ {TYPE_1__* children; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ content; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
#define  IS_DOUBLE 129 
#define  IS_LONG 128 
 scalar_t__ XML_TEXT_NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static zval *FUNC8(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
	FUNC3(ret);
	FUNC0(data, ret);

	if (data && data->children) {
		if (data->children->type == XML_TEXT_NODE && data->children->next == NULL) {
			zend_long lval;
			double dval;

			FUNC7(data->children->content);
			errno = 0;

			switch (FUNC4((char*)data->children->content, FUNC6((char*)data->children->content), &lval, &dval, 0)) {
				case IS_LONG:
					FUNC2(ret, lval);
					break;
				case IS_DOUBLE:
					FUNC1(ret, dval);
					break;
				default:
					FUNC5(E_ERROR, "Encoding: Violation of encoding rules");
			}
		} else {
			FUNC5(E_ERROR, "Encoding: Violation of encoding rules");
		}
	} else {
		FUNC3(ret);
	}
	return ret;
}