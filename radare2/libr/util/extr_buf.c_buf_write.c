
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int st64 ;
struct TYPE_6__ {TYPE_1__* methods; } ;
struct TYPE_5__ {int (* write ) (TYPE_2__*,int const*,size_t) ;} ;
typedef TYPE_2__ RBuffer ;


 int r_return_val_if_fail (int,int) ;
 int stub1 (TYPE_2__*,int const*,size_t) ;

__attribute__((used)) static st64 buf_write(RBuffer *b, const ut8 *buf, size_t len) {
 r_return_val_if_fail (b && b->methods, -1);
 return b->methods->write? b->methods->write (b, buf, len): -1;
}
