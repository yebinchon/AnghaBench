#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_1__* sdlSoapBindingFunctionHeaderPtr ;
struct TYPE_5__ {struct TYPE_5__* headerfaults; struct TYPE_5__* ns; struct TYPE_5__* name; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(zval *zv)
{
	sdlSoapBindingFunctionHeaderPtr hdr = FUNC0(zv);
	if (hdr->name) {
		FUNC1(hdr->name);
	}
	if (hdr->ns) {
		FUNC1(hdr->ns);
	}
	if (hdr->headerfaults) {
		FUNC2(hdr->headerfaults);
		FUNC1(hdr->headerfaults);
	}
	FUNC1(hdr);
}