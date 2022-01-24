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
typedef  double zend_long ;
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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,double*,double*,int /*<<< orphan*/ ) ; 
 double FUNC4 () ; 
 double FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static zval *FUNC10(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
	FUNC2(ret);
	FUNC0(data, ret);

	if (data && data->children) {
		if (data->children->type == XML_TEXT_NODE && data->children->next == NULL) {
			zend_long lval;
			double dval;

			FUNC9(data->children->content);
			switch (FUNC3((char*)data->children->content, FUNC7((char*)data->children->content), &lval, &dval, 0)) {
				case IS_LONG:
					FUNC1(ret, lval);
					break;
				case IS_DOUBLE:
					FUNC1(ret, dval);
					break;
				default:
					if (FUNC8((char*)data->children->content, "NaN", sizeof("NaN")-1) == 0) {
						FUNC1(ret, FUNC5());
					} else if (FUNC8((char*)data->children->content, "INF", sizeof("INF")-1) == 0) {
						FUNC1(ret, FUNC4());
					} else if (FUNC8((char*)data->children->content, "-INF", sizeof("-INF")-1) == 0) {
						FUNC1(ret, -FUNC4());
					} else {
						FUNC6(E_ERROR, "Encoding: Violation of encoding rules");
					}
			}
		} else {
			FUNC6(E_ERROR, "Encoding: Violation of encoding rules");
		}
	} else {
		FUNC2(ret);
	}
	return ret;
}