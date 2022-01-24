#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNsPtr ;
typedef  TYPE_2__* xmlNodePtr ;
typedef  char xmlChar ;
typedef  int /*<<< orphan*/ * sdlTypePtr ;
typedef  TYPE_3__* sdlPtr ;
struct TYPE_10__ {scalar_t__ elements; } ;
struct TYPE_9__ {int /*<<< orphan*/  doc; } ;
struct TYPE_8__ {char const* href; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char**,char**) ; 
 int FUNC5 (char*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,char*,int) ; 

__attribute__((used)) static sdlTypePtr FUNC9(sdlPtr sdl, xmlNodePtr node, const xmlChar *type)
{
	sdlTypePtr ret = NULL;

	if (sdl->elements) {
		xmlNsPtr nsptr;
		char *ns, *cptype;
		sdlTypePtr sdl_type;

		FUNC4(type, &cptype, &ns);
		nsptr = FUNC6(node->doc, node, FUNC0(ns));
		if (nsptr != NULL) {
			int ns_len = FUNC7(nsptr->href);
			int type_len = FUNC5(cptype);
			int len = ns_len + type_len + 1;
			char *nscat = FUNC2(len + 1);

			FUNC3(nscat, nsptr->href, ns_len);
			nscat[ns_len] = ':';
			FUNC3(nscat+ns_len+1, cptype, type_len);
			nscat[len] = '\0';

			if ((sdl_type = FUNC8(sdl->elements, nscat, len)) != NULL) {
				ret = sdl_type;
			} else if ((sdl_type = FUNC8(sdl->elements, (char*)type, type_len)) != NULL) {
				ret = sdl_type;
			}
			FUNC1(nscat);
		} else {
			if ((sdl_type = FUNC8(sdl->elements, (char*)type, FUNC7(type))) != NULL) {
				ret = sdl_type;
			}
		}

		FUNC1(cptype);
		if (ns) {FUNC1(ns);}
	}
	return ret;
}