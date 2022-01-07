
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* ut64 ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {void* offset; void* size; } ;
typedef TYPE_1__ RIONull ;
typedef TYPE_2__ RIODesc ;
typedef int RIO ;



__attribute__((used)) static bool __resize(RIO* io, RIODesc* fd, ut64 count) {
 if (fd && fd->data) {
  RIONull* null = (RIONull*) fd->data;
  null->size = count;
  if (null->offset >= count) {
   if (count) {
    null->offset = count - 1;
   } else {
    null->offset = 0LL;
   }
  }
  return 1;
 }
 return 0;
}
