
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {TYPE_1__* methods; } ;
struct TYPE_5__ {int (* resize ) (TYPE_2__*,int ) ;} ;
typedef TYPE_2__ RBuffer ;


 int r_return_val_if_fail (int,int) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static bool buf_resize(RBuffer *b, ut64 newsize) {
 r_return_val_if_fail (b && b->methods, -1);
 return b->methods->resize? b->methods->resize (b, newsize): 0;
}
