
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {int (* cat ) (int ,TYPE_1__*,char const*) ;scalar_t__ path; } ;
struct TYPE_5__ {char* name; int root; } ;
typedef TYPE_1__ RFSFile ;


 TYPE_3__* routes ;
 int strlen (scalar_t__) ;
 int strncmp (char const*,scalar_t__,int ) ;
 int stub1 (int ,TYPE_1__*,char const*) ;

__attribute__((used)) static bool fs_r2_read(RFSFile *file, ut64 addr, int len) {
 int i;
 const char *path = file->name;
 for (i = 0; routes[i].path; i++) {
  if (routes[i].cat && !strncmp (path, routes[i].path, strlen (routes[i].path))) {
   return routes[i].cat (file->root, file, path);
  }
 }
 return 0;
}
