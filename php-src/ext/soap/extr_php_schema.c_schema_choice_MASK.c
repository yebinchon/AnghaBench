#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlAttrPtr ;
typedef  TYPE_3__* sdlTypePtr ;
typedef  int /*<<< orphan*/  sdlPtr ;
typedef  TYPE_4__* sdlContentModelPtr ;
typedef  int /*<<< orphan*/  sdlContentModel ;
struct TYPE_24__ {void* content; } ;
struct TYPE_27__ {TYPE_1__ u; int /*<<< orphan*/  kind; } ;
struct TYPE_26__ {TYPE_4__* model; } ;
struct TYPE_25__ {struct TYPE_25__* next; int /*<<< orphan*/  name; struct TYPE_25__* children; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  XSD_CONTENT_CHOICE ; 
 int /*<<< orphan*/  delete_model ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC10(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr choiceType, sdlTypePtr cur_type, sdlContentModelPtr model)
{
	xmlNodePtr trav;
	sdlContentModelPtr newModel;

	newModel = FUNC0(sizeof(sdlContentModel));
	newModel->kind = XSD_CONTENT_CHOICE;
	newModel->u.content = FUNC0(sizeof(HashTable));
	FUNC8(newModel->u.content, 0, NULL, delete_model, 0);
	if (model == NULL) {
		cur_type->model = newModel;
	} else {
		FUNC9(model->u.content, newModel);
	}

	FUNC5(choiceType, newModel);

	trav = choiceType->children;
	if (trav != NULL && FUNC1(trav,"annotation")) {
		/* TODO: <annotation> support */
		trav = trav->next;
	}
	while (trav != NULL) {
		if (FUNC1(trav,"element")) {
			FUNC3(sdl, tns, trav, cur_type, newModel);
		} else if (FUNC1(trav,"group")) {
			FUNC4(sdl, tns, trav, cur_type, newModel);
		} else if (FUNC1(trav,"choice")) {
			FUNC10(sdl, tns, trav, cur_type, newModel);
		} else if (FUNC1(trav,"sequence")) {
			FUNC6(sdl, tns, trav, cur_type, newModel);
		} else if (FUNC1(trav,"any")) {
			FUNC2(sdl, tns, trav, cur_type, newModel);
		} else {
			FUNC7(E_ERROR, "Parsing Schema: unexpected <%s> in choice", trav->name);
		}
		trav = trav->next;
	}
	return TRUE;
}