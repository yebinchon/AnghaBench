#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNsPtr ;
typedef  TYPE_2__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  int /*<<< orphan*/  sdlPtr ;
typedef  int /*<<< orphan*/ * encodePtr ;
struct TYPE_7__ {int /*<<< orphan*/  doc; } ;
struct TYPE_6__ {scalar_t__ href; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,char**,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 

encodePtr FUNC8(sdlPtr sdl, xmlNodePtr node, const xmlChar *type)
{
	encodePtr enc = NULL;
	xmlNsPtr nsptr;
	char *ns, *cptype;

	FUNC4(type, &cptype, &ns);
	nsptr = FUNC6(node->doc, node, FUNC0(ns));
	if (nsptr != NULL) {
		enc = FUNC2(sdl, (char*)nsptr->href, cptype);
		if (enc == NULL) {
			enc = FUNC3(sdl, cptype, FUNC5(cptype));
		}
	} else {
		enc = FUNC3(sdl, (char*)type, FUNC7(type));
	}
	FUNC1(cptype);
	if (ns) {FUNC1(ns);}
	return enc;
}