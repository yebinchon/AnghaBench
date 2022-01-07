
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ offset; } ;
typedef TYPE_1__ RIONull ;
typedef TYPE_2__ RIODesc ;
typedef int RIO ;






__attribute__((used)) static ut64 __lseek(RIO* io, RIODesc* fd, ut64 offset, int whence) {
 RIONull* null;
 if (!fd || !fd->data) {
  return offset;
 }
 null = (RIONull*) fd->data;
 switch (whence) {
 case 128:
  if (offset >= null->size) {
   return null->offset = null->size - 1;
  }
  return null->offset = offset;
 case 130:
  if ((null->offset + offset) >= null->size) {
   return null->offset = null->size - 1;
  }
  return null->offset += offset;
 case 129:
  return null->offset = null->size - 1;
 }
 return offset;
}
