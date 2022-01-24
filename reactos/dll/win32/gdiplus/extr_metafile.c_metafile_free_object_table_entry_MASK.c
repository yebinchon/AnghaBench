#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * object; int /*<<< orphan*/  image_attributes; int /*<<< orphan*/  font; int /*<<< orphan*/  image; int /*<<< orphan*/  region; int /*<<< orphan*/  path; int /*<<< orphan*/  pen; int /*<<< orphan*/  brush; } ;
struct emfplus_object {int type; TYPE_1__ u; } ;
struct TYPE_5__ {struct emfplus_object* objtable; } ;
typedef  TYPE_2__ GpMetafile ;
typedef  size_t BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  ObjectTypeBrush 135 
#define  ObjectTypeFont 134 
#define  ObjectTypeImage 133 
#define  ObjectTypeImageAttributes 132 
#define  ObjectTypeInvalid 131 
#define  ObjectTypePath 130 
#define  ObjectTypePen 129 
#define  ObjectTypeRegion 128 

__attribute__((used)) static void FUNC8(GpMetafile *metafile, BYTE id)
{
    struct emfplus_object *object = &metafile->objtable[id];

    switch (object->type)
    {
    case ObjectTypeInvalid:
        break;
    case ObjectTypeBrush:
        FUNC1(object->u.brush);
        break;
    case ObjectTypePen:
        FUNC4(object->u.pen);
        break;
    case ObjectTypePath:
        FUNC3(object->u.path);
        break;
    case ObjectTypeRegion:
        FUNC5(object->u.region);
        break;
    case ObjectTypeImage:
        FUNC6(object->u.image);
        break;
    case ObjectTypeFont:
        FUNC2(object->u.font);
        break;
    case ObjectTypeImageAttributes:
        FUNC7(object->u.image_attributes);
        break;
    default:
        FUNC0("not implemented for object type %u.\n", object->type);
        return;
    }

    object->type = ObjectTypeInvalid;
    object->u.object = NULL;
}