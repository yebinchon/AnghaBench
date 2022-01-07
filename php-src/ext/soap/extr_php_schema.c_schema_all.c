
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_2__* xmlNodePtr ;
typedef int xmlAttrPtr ;
typedef TYPE_3__* sdlTypePtr ;
typedef int sdlPtr ;
typedef TYPE_4__* sdlContentModelPtr ;
typedef int sdlContentModel ;
struct TYPE_15__ {void* content; } ;
struct TYPE_18__ {TYPE_1__ u; int kind; } ;
struct TYPE_17__ {TYPE_4__* model; } ;
struct TYPE_16__ {struct TYPE_16__* next; int name; struct TYPE_16__* children; } ;
typedef int HashTable ;


 int E_ERROR ;
 int TRUE ;
 int XSD_CONTENT_ALL ;
 int delete_model ;
 void* emalloc (int) ;
 scalar_t__ node_is_equal (TYPE_2__*,char*) ;
 int schema_element (int ,int ,TYPE_2__*,TYPE_3__*,TYPE_4__*) ;
 int schema_min_max (TYPE_2__*,TYPE_4__*) ;
 int soap_error1 (int ,char*,int ) ;
 int zend_hash_init (void*,int ,int *,int ,int ) ;
 int zend_hash_next_index_insert_ptr (void*,TYPE_4__*) ;

__attribute__((used)) static int schema_all(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr all, sdlTypePtr cur_type, sdlContentModelPtr model)
{
 xmlNodePtr trav;
 sdlContentModelPtr newModel;

 newModel = emalloc(sizeof(sdlContentModel));
 newModel->kind = XSD_CONTENT_ALL;
 newModel->u.content = emalloc(sizeof(HashTable));
 zend_hash_init(newModel->u.content, 0, ((void*)0), delete_model, 0);
 if (model == ((void*)0)) {
  cur_type->model = newModel;
 } else {
  zend_hash_next_index_insert_ptr(model->u.content, newModel);
 }

 schema_min_max(all, newModel);

 trav = all->children;
 if (trav != ((void*)0) && node_is_equal(trav,"annotation")) {

  trav = trav->next;
 }
 while (trav != ((void*)0)) {
  if (node_is_equal(trav,"element")) {
   schema_element(sdl, tns, trav, cur_type, newModel);
  } else {
   soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in all", trav->name);
  }
  trav = trav->next;
 }
 return TRUE;
}
