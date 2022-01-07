
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* methods; } ;
struct TYPE_5__ {int (* fini ) (TYPE_2__*) ;} ;
typedef TYPE_2__ RBuffer ;


 int r_return_val_if_fail (int,int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static bool buf_fini(RBuffer *b) {
 r_return_val_if_fail (b && b->methods, 0);
 return b->methods->fini? b->methods->fini (b): 1;
}
