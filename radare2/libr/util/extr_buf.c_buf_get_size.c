
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {TYPE_1__* methods; } ;
struct TYPE_5__ {int (* get_size ) (TYPE_2__*) ;} ;
typedef TYPE_2__ RBuffer ;


 int UT64_MAX ;
 int r_return_val_if_fail (int,int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static ut64 buf_get_size(RBuffer *b) {
 r_return_val_if_fail (b && b->methods, UT64_MAX);
 return b->methods->get_size? b->methods->get_size (b): UT64_MAX;
}
