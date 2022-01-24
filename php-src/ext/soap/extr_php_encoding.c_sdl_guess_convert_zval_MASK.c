#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  TYPE_1__* sdlTypePtr ;
typedef  TYPE_2__* encodeTypePtr ;
struct TYPE_11__ {int /*<<< orphan*/  type; TYPE_1__* sdl_type; } ;
struct TYPE_12__ {TYPE_2__ details; } ;
struct TYPE_10__ {int kind; TYPE_8__* encode; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  IS_ARRAY ; 
 int /*<<< orphan*/  SOAP_ENC_ARRAY ; 
#define  XSD_TYPEKIND_COMPLEX 133 
#define  XSD_TYPEKIND_EXTENSION 132 
#define  XSD_TYPEKIND_LIST 131 
#define  XSD_TYPEKIND_RESTRICTION 130 
#define  XSD_TYPEKIND_SIMPLE 129 
#define  XSD_TYPEKIND_UNION 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

zval *FUNC7(zval *ret, encodeTypePtr enc, xmlNodePtr data)
{
	sdlTypePtr type;

	type = enc->sdl_type;
	if (type == NULL) {
		return FUNC0(ret, enc, data);
	}
/*FIXME: restriction support
	if (type && type->restrictions &&
	    data &&  data->children && data->children->content) {
		if (type->restrictions->whiteSpace && type->restrictions->whiteSpace->value) {
			if (strcmp(type->restrictions->whiteSpace->value,"replace") == 0) {
				whiteSpace_replace(data->children->content);
			} else if (strcmp(type->restrictions->whiteSpace->value,"collapse") == 0) {
				whiteSpace_collapse(data->children->content);
			}
		}
		if (type->restrictions->enumeration) {
			if (!zend_hash_exists(type->restrictions->enumeration,data->children->content,strlen(data->children->content)+1)) {
				soap_error1(E_WARNING, "Encoding: Restriction: invalid enumeration value \"%s\"", data->children->content);
			}
		}
		if (type->restrictions->minLength &&
		    strlen(data->children->content) < type->restrictions->minLength->value) {
		  soap_error0(E_WARNING, "Encoding: Restriction: length less than 'minLength'");
		}
		if (type->restrictions->maxLength &&
		    strlen(data->children->content) > type->restrictions->maxLength->value) {
		  soap_error0(E_WARNING, "Encoding: Restriction: length greater than 'maxLength'");
		}
		if (type->restrictions->length &&
		    strlen(data->children->content) != type->restrictions->length->value) {
		  soap_error0(E_WARNING, "Encoding: Restriction: length is not equal to 'length'");
		}
	}
*/
	switch (type->kind) {
		case XSD_TYPEKIND_SIMPLE:
			if (type->encode && enc != &type->encode->details) {
				return FUNC1(ret, type->encode, data);
			} else {
				return FUNC0(ret, enc, data);
			}
			break;
		case XSD_TYPEKIND_LIST:
			return FUNC4(ret, enc, data);
		case XSD_TYPEKIND_UNION:
			return FUNC6(ret, enc, data);
		case XSD_TYPEKIND_COMPLEX:
		case XSD_TYPEKIND_RESTRICTION:
		case XSD_TYPEKIND_EXTENSION:
			if (type->encode &&
			    (type->encode->details.type == IS_ARRAY ||
			     type->encode->details.type == SOAP_ENC_ARRAY)) {
				return FUNC3(ret, enc, data);
			}
			return FUNC5(ret, enc, data);
		default:
	  	FUNC2(E_ERROR, "Encoding: Internal Error");
			return FUNC0(ret, enc, data);
	}
}