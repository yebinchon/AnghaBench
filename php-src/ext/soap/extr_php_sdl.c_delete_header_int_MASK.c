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
typedef  TYPE_1__* sdlSoapBindingFunctionHeaderPtr ;
struct TYPE_5__ {struct TYPE_5__* headerfaults; struct TYPE_5__* ns; struct TYPE_5__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(sdlSoapBindingFunctionHeaderPtr hdr)
{
	if (hdr->name) {
		FUNC0(hdr->name);
	}
	if (hdr->ns) {
		FUNC0(hdr->ns);
	}
	if (hdr->headerfaults) {
		FUNC1(hdr->headerfaults);
		FUNC0(hdr->headerfaults);
	}
	FUNC0(hdr);
}