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
typedef  void* sdlTypePtr ;
typedef  TYPE_1__* sdlSoapBindingFunctionHeaderPtr ;
typedef  int /*<<< orphan*/  sdlSoapBindingFunctionHeader ;
typedef  TYPE_2__* sdlSoapBindingFunctionBodyPtr ;
typedef  void* encodePtr ;
struct TYPE_7__ {scalar_t__ use; scalar_t__ encodingStyle; void* headers; void* ns; } ;
struct TYPE_6__ {scalar_t__ use; scalar_t__ encodingStyle; void* element; void* encode; void* ns; void* name; void* headerfaults; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ SOAP_ENCODED ; 
 void* SOAP_ENCODING_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  delete_header ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sdlEncodingUse ; 
 int /*<<< orphan*/  sdlRpcEncodingStyle ; 
 int /*<<< orphan*/  FUNC4 (void*,TYPE_1__*,char**) ; 
 void* FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(sdlSoapBindingFunctionBodyPtr body, encodePtr *encoders, sdlTypePtr *types, char **in)
{
	int i, j, n;

	FUNC0(body->use, sdlEncodingUse, in);
	if (body->use == SOAP_ENCODED) {
		FUNC0(body->encodingStyle, sdlRpcEncodingStyle, in);
	} else {
		body->encodingStyle = SOAP_ENCODING_DEFAULT;
	}
	body->ns = FUNC5(in);
	FUNC1(i, in);
	if (i > 0) {
		body->headers = FUNC2(sizeof(HashTable));
		FUNC6(body->headers, i, NULL, delete_header, 0);
		while (i > 0) {
			sdlSoapBindingFunctionHeaderPtr tmp = FUNC2(sizeof(sdlSoapBindingFunctionHeader));
			FUNC3(tmp, 0, sizeof(sdlSoapBindingFunctionHeader));
			FUNC4(body->headers, tmp, in);
			FUNC0(tmp->use, sdlEncodingUse, in);
			if (tmp->use == SOAP_ENCODED) {
				FUNC0(tmp->encodingStyle, sdlRpcEncodingStyle, in);
			} else {
				tmp->encodingStyle = SOAP_ENCODING_DEFAULT;
			}
			tmp->name = FUNC5(in);
			tmp->ns = FUNC5(in);
			FUNC1(n, in);
			tmp->encode = encoders[n];
			FUNC1(n, in);
			tmp->element = types[n];
			--i;
			FUNC1(j, in);
			if (j > 0) {
				tmp->headerfaults = FUNC2(sizeof(HashTable));
				FUNC6(tmp->headerfaults, i, NULL, delete_header, 0);
				while (j > 0) {
					sdlSoapBindingFunctionHeaderPtr tmp2 = FUNC2(sizeof(sdlSoapBindingFunctionHeader));
					FUNC3(tmp2, 0, sizeof(sdlSoapBindingFunctionHeader));
					FUNC4(tmp->headerfaults, tmp2, in);
					FUNC0(tmp2->use, sdlEncodingUse, in);
					if (tmp2->use == SOAP_ENCODED) {
						FUNC0(tmp2->encodingStyle, sdlRpcEncodingStyle, in);
					} else {
						tmp2->encodingStyle = SOAP_ENCODING_DEFAULT;
					}
					tmp2->name = FUNC5(in);
					tmp2->ns = FUNC5(in);
					FUNC1(n, in);
					tmp2->encode = encoders[n];
					FUNC1(n, in);
					tmp2->element = types[n];
					--j;
				}
			}
		}
	}
}