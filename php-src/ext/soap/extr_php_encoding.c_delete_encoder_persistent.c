
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_2__* encodePtr ;
struct TYPE_5__ {int * map; TYPE_2__* type_str; TYPE_2__* ns; } ;
struct TYPE_6__ {TYPE_1__ details; } ;


 TYPE_2__* Z_PTR_P (int *) ;
 int assert (int ) ;
 int free (TYPE_2__*) ;

void delete_encoder_persistent(zval *zv)
{
 encodePtr t = Z_PTR_P(zv);
 if (t->details.ns) {
  free(t->details.ns);
 }
 if (t->details.type_str) {
  free(t->details.type_str);
 }

 assert(t->details.map == ((void*)0));
 free(t);
}
