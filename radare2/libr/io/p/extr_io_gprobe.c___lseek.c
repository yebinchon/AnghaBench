
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ offset; } ;
typedef TYPE_1__ RIOGprobe ;
typedef TYPE_2__ RIODesc ;
typedef int RIO ;


 scalar_t__ GPROBE_SIZE ;




__attribute__((used)) static ut64 __lseek (RIO *io, RIODesc *fd, ut64 offset, int whence) {
 RIOGprobe *gprobe;
 if (!fd || !fd->data) {
  return offset;
 }
 gprobe = (RIOGprobe *)fd->data;
 switch (whence) {
 case 128:
  if (offset >= GPROBE_SIZE) {
   return gprobe->offset = GPROBE_SIZE - 1;
  }
  return gprobe->offset = offset;
 case 130:
  if ((gprobe->offset + offset) >= GPROBE_SIZE) {
   return gprobe->offset = GPROBE_SIZE - 1;
  }
  return gprobe->offset += offset;
 case 129:
  return gprobe->offset = GPROBE_SIZE - 1;
 }
 return offset;
}
