
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int st64 ;
struct TYPE_6__ {TYPE_1__* methods; } ;
struct TYPE_5__ {int (* seek ) (TYPE_2__*,int,int) ;} ;
typedef TYPE_2__ RBuffer ;


 int r_return_val_if_fail (int,int) ;
 int stub1 (TYPE_2__*,int,int) ;

__attribute__((used)) static st64 buf_seek(RBuffer *b, st64 addr, int whence) {
 r_return_val_if_fail (b && b->methods, -1);
 return b->methods->seek? b->methods->seek (b, addr, whence): -1;
}
