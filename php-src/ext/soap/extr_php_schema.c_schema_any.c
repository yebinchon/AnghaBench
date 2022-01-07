
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xmlNodePtr ;
typedef int xmlAttrPtr ;
typedef int sdlTypePtr ;
typedef int sdlPtr ;
typedef TYPE_2__* sdlContentModelPtr ;
typedef int sdlContentModel ;
struct TYPE_7__ {int content; } ;
struct TYPE_8__ {TYPE_1__ u; int kind; } ;


 int TRUE ;
 int XSD_CONTENT_ANY ;
 TYPE_2__* emalloc (int) ;
 int schema_min_max (int ,TYPE_2__*) ;
 int zend_hash_next_index_insert_ptr (int ,TYPE_2__*) ;

__attribute__((used)) static int schema_any(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr anyType, sdlTypePtr cur_type, sdlContentModelPtr model)
{
 if (model != ((void*)0)) {
  sdlContentModelPtr newModel;

  newModel = emalloc(sizeof(sdlContentModel));
  newModel->kind = XSD_CONTENT_ANY;

  schema_min_max(anyType, newModel);

  zend_hash_next_index_insert_ptr(model->u.content, newModel);
 }
 return TRUE;
}
