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
typedef  TYPE_2__* xmlNodePtr ;
typedef  int /*<<< orphan*/  encodeTypePtr ;
struct TYPE_6__ {TYPE_1__* children; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ content; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ XML_TEXT_NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static zval *FUNC10(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
	FUNC2(ret);
	FUNC0(data, ret);

	if (data && data->children) {
		if (data->children->type == XML_TEXT_NODE && data->children->next == NULL) {
			FUNC9(data->children->content);
			if (FUNC8((char*)data->children->content, "true") == 0 ||
				FUNC8((char*)data->children->content, "t") == 0 ||
				FUNC7((char*)data->children->content, "1") == 0) {
				FUNC4(ret);
			} else if (FUNC8((char*)data->children->content, "false") == 0 ||
				FUNC8((char*)data->children->content, "f") == 0 ||
				FUNC7((char*)data->children->content, "0") == 0) {
				FUNC1(ret);
			} else {
				FUNC3(ret, (char*)data->children->content);
				FUNC5(ret);
			}
		} else {
			FUNC6(E_ERROR, "Encoding: Violation of encoding rules");
		}
	} else {
		FUNC2(ret);
	}
	return ret;
}