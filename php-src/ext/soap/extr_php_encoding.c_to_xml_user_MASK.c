#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_2__* xmlNodePtr ;
typedef  TYPE_3__* xmlDocPtr ;
typedef  TYPE_4__* encodeTypePtr ;
struct TYPE_19__ {TYPE_1__* map; } ;
struct TYPE_18__ {scalar_t__ children; } ;
struct TYPE_17__ {int /*<<< orphan*/  doc; } ;
struct TYPE_16__ {int /*<<< orphan*/  to_xml; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_ERROR ; 
 scalar_t__ FAILURE ; 
 scalar_t__ IS_STRING ; 
 scalar_t__ IS_UNDEF ; 
 int SOAP_ENCODED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC10 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

xmlNodePtr FUNC14(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
	xmlNodePtr ret = NULL;
	zval return_value;

	if (type && type->map && FUNC4(type->map->to_xml) != IS_UNDEF) {
		FUNC1(&return_value);

		if (FUNC5(NULL, NULL, &type->map->to_xml, &return_value, 1, data) == FAILURE) {
			FUNC7(E_ERROR, "Encoding: Error calling to_xml callback");
		}
		if (FUNC4(return_value) == IS_STRING) {
			xmlDocPtr doc = FUNC8(FUNC3(return_value), FUNC2(return_value));
			if (doc && doc->children) {
				ret = FUNC10(doc->children, parent->doc, 1);
			}
			FUNC11(doc);
		}

		FUNC13(&return_value);
	}
	if (!ret) {
		ret = FUNC12(NULL, FUNC0("BOGUS"));
	}
	FUNC9(parent, ret);
	if (style == SOAP_ENCODED) {
		FUNC6(ret, type);
	}
	return ret;
}