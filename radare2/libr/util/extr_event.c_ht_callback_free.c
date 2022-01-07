
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; } ;
typedef int RVector ;
typedef TYPE_1__ HtUPKv ;


 int r_vector_free (int *) ;

__attribute__((used)) static void ht_callback_free(HtUPKv *kv) {
 r_vector_free ((RVector *)kv->value);
}
