
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_2__* encodePtr ;
struct TYPE_5__ {scalar_t__ map; TYPE_2__* type_str; TYPE_2__* ns; } ;
struct TYPE_6__ {TYPE_1__ details; } ;


 TYPE_2__* Z_PTR_P (int *) ;
 int delete_mapping (scalar_t__) ;
 int efree (TYPE_2__*) ;

void delete_encoder(zval *zv)
{
 encodePtr t = Z_PTR_P(zv);
 if (t->details.ns) {
  efree(t->details.ns);
 }
 if (t->details.type_str) {
  efree(t->details.type_str);
 }
 if (t->details.map) {
  delete_mapping(t->details.map);
 }
 efree(t);
}
