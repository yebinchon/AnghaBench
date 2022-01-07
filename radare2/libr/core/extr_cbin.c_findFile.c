
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_4__ {TYPE_1__* desc; int uri; scalar_t__ perm; } ;
struct TYPE_3__ {int uri; scalar_t__ perm; } ;
typedef TYPE_1__ RIODesc ;
typedef TYPE_2__ FindFile ;


 int strcmp (int ,int ) ;

__attribute__((used)) static bool findFile(void *user, void *data, ut32 id) {
 FindFile *res = (FindFile*)user;
 RIODesc *desc = (RIODesc*)data;
 if (desc->perm && res->perm && !strcmp (desc->uri, res->uri)) {
  res->desc = desc;
  return 0;
 }
 return 1;
}
