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
typedef  void* sdlTypePtr ;
typedef  TYPE_2__* sdlContentModelPtr ;
typedef  int /*<<< orphan*/  sdlContentModel ;
struct TYPE_5__ {void* group; int /*<<< orphan*/  group_ref; void* content; void* element; } ;
struct TYPE_6__ {int kind; int min_occurs; int max_occurs; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
#define  XSD_CONTENT_ALL 133 
#define  XSD_CONTENT_CHOICE 132 
#define  XSD_CONTENT_ELEMENT 131 
#define  XSD_CONTENT_GROUP 130 
#define  XSD_CONTENT_GROUP_REF 129 
#define  XSD_CONTENT_SEQUENCE 128 
 int /*<<< orphan*/  delete_model ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  sdlContentKind ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,TYPE_2__*) ; 

__attribute__((used)) static sdlContentModelPtr FUNC6(sdlTypePtr *types, sdlTypePtr *elements, char **in)
{
	int i;
	sdlContentModelPtr model = FUNC2(sizeof(sdlContentModel));

	FUNC0(model->kind, sdlContentKind, in);
	FUNC1(model->min_occurs, in);
	FUNC1(model->max_occurs, in);
	switch (model->kind) {
		case XSD_CONTENT_ELEMENT:
			FUNC1(i, in);
			model->u.element = elements[i];
			break;
		case XSD_CONTENT_SEQUENCE:
		case XSD_CONTENT_ALL:
		case XSD_CONTENT_CHOICE:
			FUNC1(i, in);
			model->u.content = FUNC2(sizeof(HashTable));
			FUNC4(model->u.content, i, NULL, delete_model, 0);
			while (i > 0) {
				sdlContentModelPtr x = FUNC6(types, elements, in);
				FUNC5(model->u.content, x);
				i--;
			}
			break;
		case XSD_CONTENT_GROUP_REF:
			model->u.group_ref = FUNC3(in);
			break;
		case XSD_CONTENT_GROUP:
			FUNC1(i, in);
			model->u.group = types[i];
			break;
		default:
			break;
	}
	return model;
}