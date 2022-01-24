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
typedef  int /*<<< orphan*/  xmlBufferPtr ;
typedef  int /*<<< orphan*/  encodeTypePtr ;
struct TYPE_6__ {TYPE_1__* children; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ content; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ XML_CDATA_SECTION_NODE ; 
 scalar_t__ XML_TEXT_NODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  encoding ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

__attribute__((used)) static zval *FUNC13(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
	FUNC3(ret);
	FUNC0(data, ret);
	if (data && data->children) {
		if (data->children->type == XML_TEXT_NODE && data->children->next == NULL) {
			FUNC6(data->children->content);
			if (FUNC1(encoding) != NULL) {
				xmlBufferPtr in  = FUNC9(data->children->content, FUNC12(data->children->content));
				xmlBufferPtr out = FUNC8();
				int n = FUNC11(FUNC1(encoding), out, in);

				if (n >= 0) {
					FUNC4(ret, (char*)FUNC7(out));
				} else {
					FUNC4(ret, (char*)data->children->content);
				}
				FUNC10(out);
				FUNC10(in);
			} else {
				FUNC4(ret, (char*)data->children->content);
			}
		} else if (data->children->type == XML_CDATA_SECTION_NODE && data->children->next == NULL) {
			FUNC4(ret, (char*)data->children->content);
		} else {
			FUNC5(E_ERROR, "Encoding: Violation of encoding rules");
		}
	} else {
		FUNC2(ret);
	}
	return ret;
}