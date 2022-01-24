#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sdlSoapBindingFunctionBodyPtr ;
struct TYPE_3__ {scalar_t__ headers; scalar_t__ ns; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(sdlSoapBindingFunctionBodyPtr body, HashTable *ptr_map)
{
	if (body->ns) {
		body->ns = FUNC1(body->ns);
	}

	if (body->headers) {
		body->headers = FUNC0(body->headers, ptr_map);
	}
}