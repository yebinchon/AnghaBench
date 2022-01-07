
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int open (char const*,int,int) ;

__attribute__((used)) static int posixOpen(const char *zFile, int flags, int mode){
  return open(zFile, flags, mode);
}
