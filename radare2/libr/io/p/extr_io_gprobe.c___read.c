
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
 int gprobe_read (int *,scalar_t__,int *,int) ;

__attribute__((used)) static int __read (RIO *io, RIODesc *fd, ut8 *buf, int count) {
 int res;
 RIOGprobe *gprobe;
 int has_read = 0;

 if (!fd || !fd->data || !buf) {
  return -1;
 }

 gprobe = (RIOGprobe *)fd->data;

 if ((gprobe->offset + count) > GPROBE_SIZE) {
  count = GPROBE_SIZE - gprobe->offset;
 }

 while (has_read < count) {
  res = gprobe_read (&gprobe->gport, gprobe->offset, buf + has_read, count - has_read);
  if (res <= 0) {
   return -1;
  }
  gprobe->offset += res;
  has_read += res;
 }

 return has_read;
}
