
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int sections; } ;
struct TYPE_6__ {TYPE_1__* o; } ;
struct TYPE_5__ {TYPE_3__* bin_obj; } ;
typedef int RList ;
typedef TYPE_2__ RBinFile ;
typedef TYPE_3__ QnxObj ;


 int * r_list_clone (int ) ;
 int r_return_val_if_fail (int,int *) ;

__attribute__((used)) static RList* sections(RBinFile *bf) {
 r_return_val_if_fail (bf && bf->o, ((void*)0));
 QnxObj *qo = bf->o->bin_obj;
 return r_list_clone (qo->sections);
}
