
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * object; int image_attributes; int font; int image; int region; int path; int pen; int brush; } ;
struct emfplus_object {int type; TYPE_1__ u; } ;
struct TYPE_5__ {struct emfplus_object* objtable; } ;
typedef TYPE_2__ GpMetafile ;
typedef size_t BYTE ;


 int FIXME (char*,int) ;
 int GdipDeleteBrush (int ) ;
 int GdipDeleteFont (int ) ;
 int GdipDeletePath (int ) ;
 int GdipDeletePen (int ) ;
 int GdipDeleteRegion (int ) ;
 int GdipDisposeImage (int ) ;
 int GdipDisposeImageAttributes (int ) ;
__attribute__((used)) static void metafile_free_object_table_entry(GpMetafile *metafile, BYTE id)
{
    struct emfplus_object *object = &metafile->objtable[id];

    switch (object->type)
    {
    case 131:
        break;
    case 135:
        GdipDeleteBrush(object->u.brush);
        break;
    case 129:
        GdipDeletePen(object->u.pen);
        break;
    case 130:
        GdipDeletePath(object->u.path);
        break;
    case 128:
        GdipDeleteRegion(object->u.region);
        break;
    case 133:
        GdipDisposeImage(object->u.image);
        break;
    case 134:
        GdipDeleteFont(object->u.font);
        break;
    case 132:
        GdipDisposeImageAttributes(object->u.image_attributes);
        break;
    default:
        FIXME("not implemented for object type %u.\n", object->type);
        return;
    }

    object->type = 131;
    object->u.object = ((void*)0);
}
