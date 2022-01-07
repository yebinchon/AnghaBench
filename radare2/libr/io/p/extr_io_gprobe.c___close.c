
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {int gport; } ;
typedef TYPE_1__ RIOGprobe ;
typedef TYPE_2__ RIODesc ;


 int R_FREE (scalar_t__) ;
 int sp_close (int *) ;

__attribute__((used)) static int __close (RIODesc *fd) {
 RIOGprobe *gprobe;

 if (!fd || !fd->data) {
  return -1;
 }
 gprobe = (RIOGprobe *)fd->data;

 sp_close (&gprobe->gport);
 R_FREE (fd->data);

 return 0;
}
