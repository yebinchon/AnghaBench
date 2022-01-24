#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sdlExtraAttributePtr ;
typedef  int /*<<< orphan*/  sdlExtraAttribute ;
typedef  TYPE_2__* sdlAttributePtr ;
typedef  int /*<<< orphan*/  encodePtr ;
struct TYPE_6__ {void* extraAttributes; int /*<<< orphan*/  encode; int /*<<< orphan*/  use; int /*<<< orphan*/  form; void* fixed; void* def; void* ref; void* namens; void* name; } ;
struct TYPE_5__ {void* val; void* ns; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  delete_extra_attribute ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  sdlForm ; 
 int /*<<< orphan*/  sdlUse ; 
 int /*<<< orphan*/  FUNC3 (void*,TYPE_1__*,char**) ; 
 void* FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(sdlAttributePtr attr, encodePtr *encoders, char **in)
{
	int i;

	attr->name = FUNC4(in);
	attr->namens = FUNC4(in);
	attr->ref = FUNC4(in);
	attr->def = FUNC4(in);
	attr->fixed = FUNC4(in);
	FUNC0(attr->form, sdlForm, in);
	FUNC0(attr->use, sdlUse, in);
	FUNC1(i, in);
	attr->encode = encoders[i];
	FUNC1(i, in);
	if (i > 0) {
		attr->extraAttributes = FUNC2(sizeof(HashTable));
		FUNC5(attr->extraAttributes, i, NULL, delete_extra_attribute, 0);
		while (i > 0) {
			sdlExtraAttributePtr x = FUNC2(sizeof(sdlExtraAttribute));
			FUNC3(attr->extraAttributes, x, in);
			x->ns = FUNC4(in);
			x->val = FUNC4(in);
			--i;
		}
	}
}