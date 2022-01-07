
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {struct TYPE_5__* url; } ;
typedef TYPE_1__ RIOR2Web ;
typedef TYPE_2__ RIODesc ;


 int R_FREE (TYPE_1__*) ;

__attribute__((used)) static int __close(RIODesc *fd) {
 RIOR2Web *riom;
 if (!fd || !fd->data) {
  return -1;
 }
 riom = fd->data;
 R_FREE (riom->url);
 R_FREE (fd->data);
 return 0;
}
