
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ptr; } ;
typedef TYPE_1__ zend_resource ;
struct TYPE_7__ {size_t id; scalar_t__ pdict; TYPE_3__* pbroker; } ;
typedef TYPE_2__ enchant_dict ;
struct TYPE_8__ {int rsrc; int ** dict; int pbroker; } ;
typedef TYPE_3__ enchant_broker ;


 int efree (TYPE_2__*) ;
 int enchant_broker_free_dict (int ,scalar_t__) ;
 int zend_list_delete (int ) ;

__attribute__((used)) static void php_enchant_dict_free(zend_resource *rsrc)

{
 if (rsrc->ptr) {
  enchant_dict *pdict = (enchant_dict *)rsrc->ptr;
  if (pdict) {
   enchant_broker *pbroker = pdict->pbroker;

   if (pdict->pdict && pbroker) {
    enchant_broker_free_dict(pbroker->pbroker, pdict->pdict);
   }

   pbroker->dict[pdict->id] = ((void*)0);
   efree(pdict);
   zend_list_delete(pbroker->rsrc);
  }
 }
}
