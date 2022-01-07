
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * (* dir ) (int *,char const*) ;scalar_t__ path; } ;
typedef int RList ;
typedef int RFSRoot ;


 TYPE_1__* routes ;
 int strlen (scalar_t__) ;
 int strncmp (char const*,scalar_t__,int ) ;
 int * stub1 (int *,char const*) ;

__attribute__((used)) static RList *fs_r2_dir(RFSRoot *root, const char *path, int view ) {
 int i;
 for (i = 0; routes[i].path; i++) {
  if (routes[i].dir && !strncmp (path, routes[i].path, strlen (routes[i].path))) {
   return routes[i].dir (root, path);
  }
 }
 return ((void*)0);
}
