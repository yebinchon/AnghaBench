
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


 int memset (int *,int,int) ;

__attribute__((used)) static int __read(RIO* io, RIODesc* fd, ut8* buf, int count) {
 RIONull* null;
 if (!fd || !fd->data || !buf) {
  return -1;
 }
 null = (RIONull*) fd->data;
 if ((null->offset + count) > null->size) {
  int ret = null->size - null->offset;
  memset (buf, 0x00, ret);
  null->offset = null->size;
  return ret;
 }
 memset (buf, 0x00, count);
 null->offset += count;
 return count;
}
