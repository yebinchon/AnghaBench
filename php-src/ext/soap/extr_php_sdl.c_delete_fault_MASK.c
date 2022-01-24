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
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_1__* sdlSoapBindingFunctionFaultPtr ;
typedef  TYPE_2__* sdlFaultPtr ;
struct TYPE_7__ {struct TYPE_7__* bindingAttributes; struct TYPE_7__* details; struct TYPE_7__* name; } ;
struct TYPE_6__ {TYPE_2__* ns; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(zval *zv)
{
	sdlFaultPtr fault = FUNC0(zv);
	if (fault->name) {
		FUNC1(fault->name);
	}
	if (fault->details) {
		FUNC2(fault->details);
		FUNC1(fault->details);
	}
	if (fault->bindingAttributes) {
		sdlSoapBindingFunctionFaultPtr binding = (sdlSoapBindingFunctionFaultPtr)fault->bindingAttributes;

		if (binding->ns) {
			FUNC1(binding->ns);
		}
		FUNC1(fault->bindingAttributes);
	}
	FUNC1(fault);
}