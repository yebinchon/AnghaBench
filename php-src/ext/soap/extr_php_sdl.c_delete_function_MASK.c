#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_2__* sdlSoapBindingFunctionPtr ;
typedef  TYPE_2__* sdlFunctionPtr ;
struct TYPE_8__ {int /*<<< orphan*/  output; int /*<<< orphan*/  input; struct TYPE_8__* soapAction; struct TYPE_8__* bindingAttributes; TYPE_1__* binding; struct TYPE_8__* faults; struct TYPE_8__* responseParameters; struct TYPE_8__* requestParameters; struct TYPE_8__* responseName; struct TYPE_8__* requestName; struct TYPE_8__* functionName; } ;
struct TYPE_7__ {scalar_t__ bindingType; } ;

/* Variables and functions */
 scalar_t__ BINDING_SOAP ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(zval *zv)
{
	sdlFunctionPtr function = FUNC0(zv);

	if (function->functionName) {
		FUNC2(function->functionName);
	}
	if (function->requestName) {
		FUNC2(function->requestName);
	}
	if (function->responseName) {
		FUNC2(function->responseName);
	}
	if (function->requestParameters) {
		FUNC3(function->requestParameters);
		FUNC2(function->requestParameters);
	}
	if (function->responseParameters) {
		FUNC3(function->responseParameters);
		FUNC2(function->responseParameters);
	}
	if (function->faults) {
		FUNC3(function->faults);
		FUNC2(function->faults);
	}

	if (function->bindingAttributes &&
	    function->binding && function->binding->bindingType == BINDING_SOAP) {
		sdlSoapBindingFunctionPtr soapFunction = function->bindingAttributes;
		if (soapFunction->soapAction) {
			FUNC2(soapFunction->soapAction);
		}
		FUNC1(soapFunction->input);
		FUNC1(soapFunction->output);
		FUNC2(soapFunction);
	}
	FUNC2(function);
}