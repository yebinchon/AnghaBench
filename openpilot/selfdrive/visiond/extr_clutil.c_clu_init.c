
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mkdir (char*,int) ;
 int unlink (char*) ;

void clu_init(void) {

  mkdir("/tmp/clcache", 0777);
  unlink("/tmp/clcache/index.cli");

}
