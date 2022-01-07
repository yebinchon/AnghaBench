
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char const* uri; int perm; int * desc; } ;
struct TYPE_5__ {int files; } ;
typedef int RIODesc ;
typedef TYPE_1__ RIO ;
typedef TYPE_2__ FindFile ;


 int findFile ;
 int r_id_storage_foreach (int ,int ,TYPE_2__*) ;

__attribute__((used)) static RIODesc *findReusableFile(RIO *io, const char *uri, int perm) {
 FindFile arg = {
  .uri = uri,
  .perm = perm,
  .desc = ((void*)0),
 };
 r_id_storage_foreach (io->files, findFile, &arg);
 return arg.desc;
}
