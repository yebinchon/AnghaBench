#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_3__* xmlNsPtr ;
typedef  TYPE_4__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  TYPE_5__* xmlAttrPtr ;
typedef  TYPE_6__* encodeTypePtr ;
typedef  TYPE_7__* encodePtr ;
struct TYPE_25__ {int /*<<< orphan*/  type; TYPE_2__* sdl_type; } ;
struct TYPE_26__ {TYPE_6__ details; } ;
struct TYPE_24__ {TYPE_1__* children; } ;
struct TYPE_23__ {scalar_t__ type; int /*<<< orphan*/  doc; struct TYPE_23__* next; struct TYPE_23__* children; scalar_t__ properties; } ;
struct TYPE_22__ {scalar_t__ href; } ;
struct TYPE_21__ {scalar_t__ kind; TYPE_7__* encode; } ;
struct TYPE_20__ {int /*<<< orphan*/ * content; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IS_NULL ; 
 int /*<<< orphan*/  SOAP_ENC_ARRAY ; 
 int /*<<< orphan*/  SOAP_ENC_OBJECT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ XML_ELEMENT_NODE ; 
 int /*<<< orphan*/  XSD_STRING ; 
 scalar_t__ XSD_TYPEKIND_COMPLEX ; 
 int /*<<< orphan*/  XSI_NAMESPACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (scalar_t__,char*) ; 
 TYPE_5__* FUNC10 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC12 (scalar_t__,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_7__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char**,char**) ; 
 int /*<<< orphan*/  sdl ; 
 int /*<<< orphan*/  soap_var_class_entry ; 
 TYPE_3__* FUNC16 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zval *FUNC17(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
	encodePtr enc = NULL;
	xmlAttrPtr tmpattr;
	xmlChar *type_name = NULL;

	data = FUNC7(data);

	if (data == NULL) {
		enc = FUNC11(IS_NULL);
	} else if (data->properties && FUNC10(data->properties, "nil", XSI_NAMESPACE)) {
		enc = FUNC11(IS_NULL);
	} else {
		tmpattr = FUNC10(data->properties,"type", XSI_NAMESPACE);
		if (tmpattr != NULL) {
		  type_name = tmpattr->children->content;
			enc = FUNC12(FUNC1(sdl), data, tmpattr->children->content);
			if (enc && type == &enc->details) {
				enc = NULL;
			}
			if (enc != NULL) {
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
			}
		}

		if (enc == NULL) {
			/* Didn't have a type, totally guess here */
			/* Logic: has children = IS_OBJECT else IS_STRING */
			xmlNodePtr trav;

			if (FUNC9(data->properties, "arrayType") ||
			    FUNC9(data->properties, "itemType") ||
			    FUNC9(data->properties, "arraySize")) {
				enc = FUNC11(SOAP_ENC_ARRAY);
			} else {
				enc = FUNC11(XSD_STRING);
				trav = data->children;
				while (trav != NULL) {
					if (trav->type == XML_ELEMENT_NODE) {
						enc = FUNC11(SOAP_ENC_OBJECT);
						break;
					}
					trav = trav->next;
				}
			}
		}
	}
	FUNC13(ret, enc, data);
	if (FUNC1(sdl) && type_name && enc->details.sdl_type) {
		zval soapvar;
		char *ns, *cptype;
		xmlNsPtr nsptr;

		FUNC14(&soapvar, soap_var_class_entry);
		FUNC4(&soapvar, "enc_type", enc->details.type);
		FUNC3(ret);
		FUNC6(&soapvar, "enc_value", ret);
		FUNC15(type_name, &cptype, &ns);
		nsptr = FUNC16(data->doc, data, FUNC0(ns));
		FUNC5(&soapvar, "enc_stype", cptype);
		if (nsptr) {
			FUNC5(&soapvar, "enc_ns", (char*)nsptr->href);
		}
		FUNC8(cptype);
		if (ns) {FUNC8(ns);}
		FUNC2(ret, &soapvar);
	}
	return ret;
}