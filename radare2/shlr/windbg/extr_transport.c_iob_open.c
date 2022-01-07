
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* open ) (char const*) ;} ;


 TYPE_1__* sel_backend ;
 void* stub1 (char const*) ;

void *iob_open(const char *path) {
 if (!sel_backend) {
  return ((void*)0);
 }
 return sel_backend->open (path);
}
