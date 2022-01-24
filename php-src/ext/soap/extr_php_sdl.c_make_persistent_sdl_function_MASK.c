#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sdlSoapBindingFunctionPtr ;
typedef  int /*<<< orphan*/  sdlSoapBindingFunction ;
typedef  TYPE_1__* sdlFunctionPtr ;
typedef  int /*<<< orphan*/  sdlFunction ;
typedef  TYPE_3__* sdlBindingPtr ;
struct TYPE_11__ {scalar_t__ bindingType; } ;
struct TYPE_10__ {scalar_t__ faults; void* responseParameters; void* requestParameters; struct TYPE_10__* bindingAttributes; int /*<<< orphan*/  output; int /*<<< orphan*/  input; void* soapAction; TYPE_3__* binding; void* responseName; void* requestName; void* functionName; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ BINDING_SOAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (void*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static sdlFunctionPtr FUNC8(sdlFunctionPtr func, HashTable *ptr_map)
{
	sdlFunctionPtr pfunc = NULL;

	pfunc = FUNC4(sizeof(sdlFunction));
	FUNC5(pfunc, 0, sizeof(sdlFunction));

	*pfunc = *func;

	if (pfunc->functionName) {
		pfunc->functionName = FUNC6(pfunc->functionName);
	}
	if (pfunc->requestName) {
		pfunc->requestName = FUNC6(pfunc->requestName);
	}
	if (pfunc->responseName) {
		pfunc->responseName = FUNC6(pfunc->responseName);
	}

	if (pfunc->binding) {
		sdlBindingPtr tmp;

		if ((tmp = FUNC7(ptr_map, (char*)&pfunc->binding, sizeof(pfunc->binding))) == NULL) {
			FUNC0(0);
		}
		pfunc->binding = tmp;

		if (pfunc->binding->bindingType == BINDING_SOAP && pfunc->bindingAttributes) {
			sdlSoapBindingFunctionPtr soap_binding;

		   	soap_binding = FUNC4(sizeof(sdlSoapBindingFunction));
			FUNC5(soap_binding, 0, sizeof(sdlSoapBindingFunction));
			*soap_binding = *(sdlSoapBindingFunctionPtr)pfunc->bindingAttributes;
			if (soap_binding->soapAction) {
				soap_binding->soapAction = FUNC6(soap_binding->soapAction);
			}
			FUNC3(&soap_binding->input, ptr_map);
			FUNC3(&soap_binding->output, ptr_map);
			pfunc->bindingAttributes = soap_binding;
		}

		if (pfunc->requestParameters) {
			pfunc->requestParameters = FUNC2(pfunc->requestParameters, ptr_map);
		}
		if (pfunc->responseParameters) {
			pfunc->responseParameters = FUNC2(pfunc->responseParameters, ptr_map);
		}
		if (pfunc->faults) {
			pfunc->faults = FUNC1(pfunc, pfunc->faults, ptr_map);
		}
	}

	return pfunc;
}