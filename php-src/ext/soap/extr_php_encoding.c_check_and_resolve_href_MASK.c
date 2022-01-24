#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xmlNodePtr ;
typedef  char xmlChar ;
typedef  TYPE_4__* xmlAttrPtr ;
struct TYPE_16__ {TYPE_2__* children; struct TYPE_16__* next; int /*<<< orphan*/ * ns; } ;
struct TYPE_15__ {TYPE_1__* doc; TYPE_4__* properties; } ;
struct TYPE_14__ {char* content; } ;
struct TYPE_13__ {int /*<<< orphan*/  children; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  SOAP_1_2_ENC_NAMESPACE ; 
 TYPE_4__* FUNC0 (TYPE_4__*,char*) ; 
 TYPE_4__* FUNC1 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static xmlNodePtr FUNC5(xmlNodePtr data)
{
	if (data && data->properties) {
		xmlAttrPtr href;

		href = data->properties;
		while (1) {
			href = FUNC0(href, "href");
			if (href == NULL || href->ns == NULL) {break;}
			href = href->next;
		}
		if (href) {
			/*  Internal href try and find node */
			if (href->children->content[0] == '#') {
				xmlNodePtr ret = FUNC2(data->doc->children, NULL, "id", (char*)&href->children->content[1]);
				if (!ret) {
					FUNC4(E_ERROR, "Encoding: Unresolved reference '%s'", href->children->content);
				}
				return ret;
			} else {
				/*  TODO: External href....? */
				FUNC4(E_ERROR, "Encoding: External reference '%s'", href->children->content);
			}
		}
		/* SOAP 1.2 enc:id enc:ref */
		href = FUNC1(data->properties, "ref", SOAP_1_2_ENC_NAMESPACE);
		if (href) {
			xmlChar* id;
			xmlNodePtr ret;

			if (href->children->content[0] == '#') {
				id = href->children->content+1;
			} else {
				id = href->children->content;
			}
			ret = FUNC3(data->doc->children, NULL, NULL, "id", (char*)id, SOAP_1_2_ENC_NAMESPACE);
			if (!ret) {
				FUNC4(E_ERROR, "Encoding: Unresolved reference '%s'", href->children->content);
			} else if (ret == data) {
				FUNC4(E_ERROR, "Encoding: Violation of id and ref information items '%s'", href->children->content);
			}
			return ret;
		}
	}
	return data;
}