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
typedef  TYPE_1__* sdlSoapBindingPtr ;
typedef  TYPE_1__* sdlBindingPtr ;
struct TYPE_5__ {scalar_t__ bindingType; struct TYPE_5__* bindingAttributes; struct TYPE_5__* name; struct TYPE_5__* location; } ;

/* Variables and functions */
 scalar_t__ BINDING_SOAP ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(zval *zv)
{
	sdlBindingPtr binding = FUNC0(zv);

	if (binding->location) {
		FUNC1(binding->location);
	}
	if (binding->name) {
		FUNC1(binding->name);
	}

	if (binding->bindingType == BINDING_SOAP) {
		sdlSoapBindingPtr soapBind = binding->bindingAttributes;
		if (soapBind) {
			FUNC1(soapBind);
		}
	}
	FUNC1(binding);
}