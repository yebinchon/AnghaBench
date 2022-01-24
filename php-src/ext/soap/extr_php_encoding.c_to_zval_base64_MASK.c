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
typedef  int /*<<< orphan*/  zend_string ;
typedef  TYPE_2__* xmlNodePtr ;
typedef  int /*<<< orphan*/  encodeTypePtr ;
struct TYPE_6__ {TYPE_1__* children; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ content; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ XML_CDATA_SECTION_NODE ; 
 scalar_t__ XML_TEXT_NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static zval *FUNC8(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
	zend_string *str;

	FUNC2(ret);
	FUNC0(data, ret);
	if (data && data->children) {
		if (data->children->type == XML_TEXT_NODE && data->children->next == NULL) {
			FUNC7(data->children->content);
			str = FUNC4(data->children->content, FUNC6((char*)data->children->content));
			if (!str) {
				FUNC5(E_ERROR, "Encoding: Violation of encoding rules");
			}
			FUNC3(ret, str);
		} else if (data->children->type == XML_CDATA_SECTION_NODE && data->children->next == NULL) {
			str = FUNC4(data->children->content, FUNC6((char*)data->children->content));
			if (!str) {
				FUNC5(E_ERROR, "Encoding: Violation of encoding rules");
			}
			FUNC3(ret, str);
		} else {
			FUNC5(E_ERROR, "Encoding: Violation of encoding rules");
		}
	} else {
		FUNC1(ret);
	}
	return ret;
}