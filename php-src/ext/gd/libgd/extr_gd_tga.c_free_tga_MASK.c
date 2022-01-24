#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* bitmap; struct TYPE_4__* ident; } ;
typedef  TYPE_1__ oTga ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(oTga * tga)
{
	if (tga) {
		if (tga->ident)
			FUNC0(tga->ident);
		if (tga->bitmap)
			FUNC0(tga->bitmap);
		FUNC0(tga);
	}
}