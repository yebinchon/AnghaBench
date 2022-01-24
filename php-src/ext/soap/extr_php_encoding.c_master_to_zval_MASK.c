#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_4__* xmlNodePtr ;
typedef  TYPE_5__* xmlAttrPtr ;
typedef  TYPE_6__* encodePtr ;
struct TYPE_19__ {TYPE_2__* sdl_type; } ;
struct TYPE_22__ {TYPE_3__ details; } ;
struct TYPE_21__ {TYPE_1__* children; } ;
struct TYPE_20__ {int /*<<< orphan*/  properties; } ;
struct TYPE_18__ {scalar_t__ kind; TYPE_6__* encode; } ;
struct TYPE_17__ {int /*<<< orphan*/  content; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNKNOWN_TYPE ; 
 scalar_t__ XSD_TYPEKIND_COMPLEX ; 
 int /*<<< orphan*/  XSI_NAMESPACE ; 
 TYPE_4__* FUNC1 (TYPE_4__*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  sdl ; 

zval *FUNC6(zval *ret, encodePtr encode, xmlNodePtr data)
{
	data = FUNC1(data);

	if (encode == NULL) {
		encode = FUNC3(UNKNOWN_TYPE);
	} else {
		/* Use xsi:type if it is defined */
		xmlAttrPtr type_attr = FUNC2(data->properties,"type", XSI_NAMESPACE);

		if (type_attr != NULL) {
			encodePtr  enc = FUNC4(FUNC0(sdl), data, type_attr->children->content);

			if (enc != NULL && enc != encode) {
			  encodePtr tmp = enc;
			  while (tmp &&
			         tmp->details.sdl_type != NULL &&
			         tmp->details.sdl_type->kind != XSD_TYPEKIND_COMPLEX) {
			    if (enc == tmp->details.sdl_type->encode ||
			        tmp == tmp->details.sdl_type->encode) {
			    	enc = NULL;
			    	break;
			    }
			    tmp = tmp->details.sdl_type->encode;
			  }
			  if (enc != NULL) {
			    encode = enc;
			  }
			}
		}
	}
	return FUNC5(ret, encode, data);
}