
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * name; } ;
typedef TYPE_1__ rtti_type_descriptor ;


 int free (int *) ;

__attribute__((used)) static void rtti_type_descriptor_fini(rtti_type_descriptor *td) {
 free (td->name);
 td->name = ((void*)0);
}
