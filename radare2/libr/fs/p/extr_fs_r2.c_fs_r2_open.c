
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* path; int * (* cat ) (int *,int *,char const*) ;} ;
typedef int RFSRoot ;
typedef int RFSFile ;


 TYPE_1__* routes ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int ) ;
 int * stub1 (int *,int *,char const*) ;

__attribute__((used)) static RFSFile* fs_r2_open(RFSRoot *root, const char *path, bool create) {
 int i;
 for (i = 0; routes[i].path; i++) {
  const char *cwd = routes[i].path;
  if (routes[i].cat && !strncmp (path, cwd, strlen (cwd))) {
   return routes[i].cat (root, ((void*)0), path);
  }
 }
 return ((void*)0);
}
