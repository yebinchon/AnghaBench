#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sdlSoapBindingPtr ;
typedef  int /*<<< orphan*/  sdlSoapBinding ;
typedef  TYPE_1__* sdlBindingPtr ;
typedef  int /*<<< orphan*/  sdlBinding ;
struct TYPE_7__ {scalar_t__ bindingType; struct TYPE_7__* bindingAttributes; void* location; void* name; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ BINDING_SOAP ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static sdlBindingPtr FUNC3(sdlBindingPtr bind, HashTable *ptr_map)
{
	sdlBindingPtr pbind = NULL;

	pbind = FUNC0(sizeof(sdlBinding));
	FUNC1(pbind, 0, sizeof(sdlBinding));

	*pbind = *bind;

	if (pbind->name) {
		pbind->name = FUNC2(pbind->name);
	}
	if (pbind->location) {
		pbind->location = FUNC2(pbind->location);
	}

	if (pbind->bindingType == BINDING_SOAP && pbind->bindingAttributes) {
		sdlSoapBindingPtr soap_binding;

		soap_binding = FUNC0(sizeof(sdlSoapBinding));
		FUNC1(soap_binding, 0, sizeof(sdlSoapBinding));
		*soap_binding = *(sdlSoapBindingPtr)pbind->bindingAttributes;
		pbind->bindingAttributes = soap_binding;
	}

	return pbind;
}