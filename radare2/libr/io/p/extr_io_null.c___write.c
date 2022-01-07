
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ size; } ;
typedef TYPE_1__ RIONull ;
typedef TYPE_2__ RIODesc ;
typedef int RIO ;



__attribute__((used)) static int __write(RIO* io, RIODesc* fd, const ut8* buf, int count) {
 RIONull* null;
 if (!fd || !fd->data || !buf) {
  return -1;
 }
 null = (RIONull*) fd->data;
 if ((null->offset + count) > null->size) {
  int ret = null->size - null->offset;
  return ret;
 }
 null->offset += count;
 return count;
}
