#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xmlChar ;
typedef  int /*<<< orphan*/  sdlTypePtr ;
typedef  int /*<<< orphan*/  sdlPtr ;
typedef  int /*<<< orphan*/ * encodePtr ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static encodePtr FUNC2(sdlPtr sdl, sdlTypePtr cur_type, const xmlChar *ns, const xmlChar *type)
{
	encodePtr enc = FUNC1(sdl, (char*)ns, (char*)type);
	if (enc == NULL) {
		enc = FUNC0(sdl, cur_type, ns, type);
	}
	return enc;
}