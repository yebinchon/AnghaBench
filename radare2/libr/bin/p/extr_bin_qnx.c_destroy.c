
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int fixups; int sections; } ;
struct TYPE_7__ {TYPE_1__* o; } ;
struct TYPE_6__ {TYPE_3__* bin_obj; } ;
typedef TYPE_2__ RBinFile ;
typedef TYPE_3__ QnxObj ;


 int free (TYPE_3__*) ;
 int r_list_free (int ) ;

__attribute__((used)) static void destroy(RBinFile *bf) {
 QnxObj *qo = bf->o->bin_obj;
 r_list_free (qo->sections);
 r_list_free (qo->fixups);
 bf->o->bin_obj = ((void*)0);
 free (qo);
}
