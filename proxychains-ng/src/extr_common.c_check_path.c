
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_OK ;
 int access (char*,int ) ;

__attribute__((used)) static int check_path(char *path) {
 if(!path)
  return 0;
 return access(path, R_OK) != -1;
}
