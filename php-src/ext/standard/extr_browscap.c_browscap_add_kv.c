
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_string ;
typedef int zend_bool ;
struct TYPE_5__ {int kv_used; int kv_size; TYPE_2__* kv; } ;
typedef TYPE_1__ browser_data ;
typedef int browscap_kv ;
struct TYPE_6__ {int * value; int * key; } ;


 TYPE_2__* safe_perealloc (TYPE_2__*,int,int,int ,int ) ;

__attribute__((used)) static void browscap_add_kv(
  browser_data *bdata, zend_string *key, zend_string *value, zend_bool persistent) {
 if (bdata->kv_used == bdata->kv_size) {
  bdata->kv_size *= 2;
  bdata->kv = safe_perealloc(bdata->kv, sizeof(browscap_kv), bdata->kv_size, 0, persistent);
 }

 bdata->kv[bdata->kv_used].key = key;
 bdata->kv[bdata->kv_used].value = value;
 bdata->kv_used++;
}
