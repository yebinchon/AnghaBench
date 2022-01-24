#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  text; } ;
struct TYPE_7__ {int /*<<< orphan*/  filename; TYPE_1__ subst; int /*<<< orphan*/  ident; } ;
typedef  TYPE_2__ pp_entry_t ;
struct TYPE_8__ {scalar_t__ pedantic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 TYPE_4__ pp_status ; 
 int FUNC2 (char const*) ; 
 TYPE_2__* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

void FUNC5(const char *name)
{
	pp_entry_t *ppp;
	int idx = FUNC2(name);

	if((ppp = FUNC3(name)) == NULL)
	{
		if(pp_status.pedantic)
			FUNC4("%s was not defined", name);
		return;
	}

	FUNC0( ppp->ident );
	FUNC0( ppp->subst.text );
	FUNC0( ppp->filename );
	FUNC1( ppp, idx );
}