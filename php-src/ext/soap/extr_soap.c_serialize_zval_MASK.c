#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_2__* xmlNodePtr ;
typedef  TYPE_3__* sdlParamPtr ;
typedef  int /*<<< orphan*/ * encodePtr ;
struct TYPE_12__ {TYPE_1__* element; int /*<<< orphan*/ * encode; } ;
struct TYPE_11__ {scalar_t__ name; } ;
struct TYPE_10__ {int /*<<< orphan*/  def; int /*<<< orphan*/  nillable; int /*<<< orphan*/  fixed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static xmlNodePtr FUNC7(zval *val, sdlParamPtr param, char *paramName, int style, xmlNodePtr parent) /* {{{ */
{
	xmlNodePtr xmlParam;
	encodePtr enc;
	zval defval;

	FUNC2(&defval);
	if (param != NULL) {
		enc = param->encode;
		if (val == NULL) {
			if (param->element) {
				if (param->element->fixed) {
					FUNC1(&defval, param->element->fixed);
					val = &defval;
				} else if (param->element->def && !param->element->nillable) {
					FUNC1(&defval, param->element->def);
					val = &defval;
				}
			}
		}
	} else {
		enc = NULL;
	}
	xmlParam = FUNC3(enc, val, style, parent);
	FUNC6(&defval);
	if (!FUNC4((char*)xmlParam->name, "BOGUS")) {
		FUNC5(xmlParam, FUNC0(paramName));
	}
	return xmlParam;
}