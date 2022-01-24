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
struct TYPE_5__ {scalar_t__ type; unsigned char* content; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ XML_CDATA_SECTION_NODE ; 
 scalar_t__ XML_TEXT_NODE ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 int /*<<< orphan*/ * FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zval *FUNC10(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
	zend_string *str;
	size_t i, j;
	unsigned char c;

	FUNC5(ret);
	FUNC0(data, ret);
	if (data && data->children) {
		if (data->children->type == XML_TEXT_NODE && data->children->next == NULL) {
			FUNC8(data->children->content);
		} else if (data->children->type != XML_CDATA_SECTION_NODE || data->children->next != NULL) {
			FUNC6(E_ERROR, "Encoding: Violation of encoding rules");
			return ret;
		}
		str = FUNC9(FUNC7((char*)data->children->content) / 2, 0);
		for (i = j = 0; i < FUNC1(str); i++) {
			c = data->children->content[j++];
			if (c >= '0' && c <= '9') {
				FUNC2(str)[i] = (c - '0') << 4;
			} else if (c >= 'a' && c <= 'f') {
				FUNC2(str)[i] = (c - 'a' + 10) << 4;
			} else if (c >= 'A' && c <= 'F') {
				FUNC2(str)[i] = (c - 'A' + 10) << 4;
			} else {
				FUNC6(E_ERROR, "Encoding: Violation of encoding rules");
			}
			c = data->children->content[j++];
			if (c >= '0' && c <= '9') {
				FUNC2(str)[i] |= c - '0';
			} else if (c >= 'a' && c <= 'f') {
				FUNC2(str)[i] |= c - 'a' + 10;
			} else if (c >= 'A' && c <= 'F') {
				FUNC2(str)[i] |= c - 'A' + 10;
			} else {
				FUNC6(E_ERROR, "Encoding: Violation of encoding rules");
			}
		}
		FUNC2(str)[FUNC1(str)] = '\0';
		FUNC4(ret, str);
	} else {
		FUNC3(ret);
	}
	return ret;
}