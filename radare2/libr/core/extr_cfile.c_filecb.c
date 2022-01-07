
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_4__ {int found; int name; } ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ RIODesc ;
typedef TYPE_2__ RCoreFileData ;


 int strcmp (int ,int ) ;

__attribute__((used)) static bool filecb(void *user, void *data, ut32 id) {
 RCoreFileData *fd = user;
 RIODesc *desc = (RIODesc *)data;
 if (!strcmp (desc->name, fd->name)) {
  fd->found = 1;
 }
 return 1;
}
