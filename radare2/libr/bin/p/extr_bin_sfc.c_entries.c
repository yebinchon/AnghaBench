
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RList ;
typedef int RBinFile ;


 int * r_list_new () ;

__attribute__((used)) static RList* entries(RBinFile *bf) {
 RList *ret;
 if (!(ret = r_list_new ())) {
  return ((void*)0);
 }
 return ret;
}
