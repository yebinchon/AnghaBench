
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t kv_used; char* filename; TYPE_2__* kv; TYPE_2__* htab; } ;
typedef TYPE_1__ browser_data ;
struct TYPE_6__ {int value; int key; } ;


 int pefree (TYPE_2__*,int) ;
 int zend_hash_destroy (TYPE_2__*) ;
 int zend_string_release (int ) ;

__attribute__((used)) static void browscap_bdata_dtor(browser_data *bdata, int persistent)
{
 if (bdata->htab != ((void*)0)) {
  uint32_t i;

  zend_hash_destroy(bdata->htab);
  pefree(bdata->htab, persistent);
  bdata->htab = ((void*)0);

  for (i = 0; i < bdata->kv_used; i++) {
   zend_string_release(bdata->kv[i].key);
   zend_string_release(bdata->kv[i].value);
  }
  pefree(bdata->kv, persistent);
  bdata->kv = ((void*)0);
 }
 bdata->filename[0] = '\0';
}
