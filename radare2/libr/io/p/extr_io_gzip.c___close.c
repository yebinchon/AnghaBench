
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {struct TYPE_5__* buf; } ;
typedef TYPE_1__ RIOGzip ;
typedef TYPE_2__ RIODesc ;


 int R_FREE (TYPE_1__*) ;
 int eprintf (char*) ;

__attribute__((used)) static int __close(RIODesc *fd) {
 RIOGzip *riom;
 if (!fd || !fd->data) {
  return -1;
 }
 riom = fd->data;
 R_FREE (riom->buf);
 R_FREE (fd->data);
 eprintf ("TODO: Writing changes into gzipped files is not yet supported\n");
 return 0;
}
