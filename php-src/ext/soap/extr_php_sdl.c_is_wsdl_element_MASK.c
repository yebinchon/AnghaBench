#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xmlNodePtr ;
typedef  TYPE_4__* xmlAttrPtr ;
struct TYPE_10__ {TYPE_1__* children; } ;
struct TYPE_9__ {TYPE_2__* ns; int /*<<< orphan*/  properties; } ;
struct TYPE_8__ {scalar_t__ href; } ;
struct TYPE_7__ {scalar_t__ content; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 char* WSDL_NAMESPACE ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(xmlNodePtr node)
{
	if (node->ns && FUNC2((char*)node->ns->href, WSDL_NAMESPACE) != 0) {
		xmlAttrPtr attr;
		if ((attr = FUNC0(node->properties, "required", WSDL_NAMESPACE)) != NULL &&
		     attr->children && attr->children->content &&
		     (FUNC2((char*)attr->children->content, "1") == 0 ||
		      FUNC2((char*)attr->children->content, "true") == 0)) {
			FUNC1(E_ERROR, "Parsing WSDL: Unknown required WSDL extension '%s'", node->ns->href);
		}
		return 0;
	}
	return 1;
}