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
struct TYPE_5__ {int /*<<< orphan*/ * attributes; } ;
typedef  TYPE_1__ sdlCtx ;
typedef  TYPE_2__* sdlAttributePtr ;
struct TYPE_6__ {char* ref; char* name; char* namens; char* def; char* fixed; int /*<<< orphan*/  encode; int /*<<< orphan*/ * extraAttributes; int /*<<< orphan*/  use; int /*<<< orphan*/  form; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  XSD_FORM_DEFAULT ; 
 int /*<<< orphan*/  XSD_USE_DEFAULT ; 
 int /*<<< orphan*/  copy_extra_attribute ; 
 int /*<<< orphan*/  delete_extra_attribute ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 void* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(sdlCtx *ctx, sdlAttributePtr attr)
{
	sdlAttributePtr tmp;

	if (attr->ref != NULL) {
		if (ctx->attributes != NULL) {
			tmp = (sdlAttributePtr)FUNC3(ctx->attributes, attr->ref);
			if (tmp) {
				FUNC8(ctx, tmp);
				if (tmp->name != NULL && attr->name == NULL) {
					attr->name = FUNC2(tmp->name);
				}
				if (tmp->namens != NULL && attr->namens == NULL) {
					attr->namens = FUNC2(tmp->namens);
				}
				if (tmp->def != NULL && attr->def == NULL) {
					attr->def = FUNC2(tmp->def);
				}
				if (tmp->fixed != NULL && attr->fixed == NULL) {
					attr->fixed = FUNC2(tmp->fixed);
				}
				if (attr->form == XSD_FORM_DEFAULT) {
					attr->form = tmp->form;
				}
				if (attr->use == XSD_USE_DEFAULT) {
					attr->use  = tmp->use;
				}
				if (tmp->extraAttributes != NULL) {
					attr->extraAttributes = FUNC1(sizeof(HashTable));
					FUNC6(attr->extraAttributes, FUNC7(tmp->extraAttributes), NULL, delete_extra_attribute, 0);
					FUNC5(attr->extraAttributes, tmp->extraAttributes, copy_extra_attribute);
				}
				attr->encode = tmp->encode;
			}
		}
		if (attr->name == NULL && attr->ref != NULL) {
			char *name = FUNC4(attr->ref, ':');
			if (name) {
				attr->name = FUNC2(name+1);
			} else{
				attr->name = FUNC2(attr->ref);
			}
		}
		FUNC0(attr->ref);
		attr->ref = NULL;
	}
}