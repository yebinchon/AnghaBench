#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_2__* xmlNsPtr ;
typedef  TYPE_3__* xmlNodePtr ;
typedef  TYPE_4__* xmlAttrPtr ;
struct TYPE_24__ {int /*<<< orphan*/  s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ smart_str ;
typedef  TYPE_6__* encodePtr ;
struct TYPE_19__ {char* type_str; char* ns; } ;
struct TYPE_25__ {TYPE_10__ details; int /*<<< orphan*/ * (* to_zval ) (int /*<<< orphan*/ *,TYPE_10__*,TYPE_3__*) ;} ;
struct TYPE_23__ {TYPE_1__* children; } ;
struct TYPE_22__ {int /*<<< orphan*/  doc; int /*<<< orphan*/  properties; } ;
struct TYPE_21__ {scalar_t__ href; } ;
struct TYPE_20__ {int /*<<< orphan*/  content; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XSI_NAMESPACE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char**,char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,TYPE_10__*,TYPE_3__*) ; 
 int /*<<< orphan*/  typemap ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zval *FUNC12(zval *ret, encodePtr encode, xmlNodePtr data)
{
	if (FUNC1(typemap)) {
		if (encode->details.type_str) {
			smart_str nscat = {0};
			encodePtr new_enc;

			if (encode->details.ns) {
				FUNC7(&nscat, encode->details.ns);
				FUNC6(&nscat, ':');
			}
			FUNC7(&nscat, encode->details.type_str);
			FUNC5(&nscat);
			if ((new_enc = FUNC11(FUNC1(typemap), nscat.s)) != NULL) {
				encode = new_enc;
			}
			FUNC8(&nscat);
		} else {
			xmlAttrPtr type_attr = FUNC3(data->properties,"type", XSI_NAMESPACE);

			if (type_attr != NULL) {
				encodePtr new_enc;
				xmlNsPtr nsptr;
				char *ns, *cptype;
				smart_str nscat = {0};

				FUNC4(type_attr->children->content, &cptype, &ns);
				nsptr = FUNC10(data->doc, data, FUNC0(ns));
				if (nsptr != NULL) {
					FUNC7(&nscat, (char*)nsptr->href);
					FUNC6(&nscat, ':');
				}
				FUNC7(&nscat, cptype);
				FUNC5(&nscat);
				FUNC2(cptype);
				if (ns) {FUNC2(ns);}
				if ((new_enc = FUNC11(FUNC1(typemap), nscat.s)) != NULL) {
					encode = new_enc;
				}
				FUNC8(&nscat);
			}
		}
	}
	if (encode->to_zval) {
		ret = encode->to_zval(ret, &encode->details, data);
	}
	return ret;
}