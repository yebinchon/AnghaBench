
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nb_elem; struct TYPE_6__* elems; } ;
struct TYPE_5__ {TYPE_2__* name; } ;
typedef TYPE_1__ OMF_symbol ;
typedef TYPE_2__ OMF_multi_datas ;


 int R_FREE (TYPE_2__*) ;
 scalar_t__ ct_rec ;

__attribute__((used)) static void free_pubdef(OMF_multi_datas *datas) {





 R_FREE (datas->elems);
 R_FREE (datas);
}
