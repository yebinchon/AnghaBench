
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ offset; int gport; } ;
typedef TYPE_1__ RIOGprobe ;
typedef TYPE_2__ RIODesc ;
typedef int RIO ;


 scalar_t__ GPROBE_SIZE ;
 int gprobe_write (int *,scalar_t__,int const*,int) ;

__attribute__((used)) static int __write(RIO *io, RIODesc *fd, const ut8 *buf, int count) {
 RIOGprobe *gprobe;
 int res;
 int has_written = 0;

 if (!fd || !fd->data || !buf) {
  return -1;
 }

 gprobe = (RIOGprobe *)fd->data;

 if ((gprobe->offset + count) > GPROBE_SIZE) {
  count = GPROBE_SIZE - gprobe->offset;
 }

 while (has_written < count) {
  res = gprobe_write (&gprobe->gport, gprobe->offset, buf + has_written, count - has_written);
  if (res <= 0) {
   return -1;
  }
  gprobe->offset += res;
  has_written += res;
 }

 return count;
}
