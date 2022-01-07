
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RList ;
typedef int RBinJavaObj ;
typedef int RAnal ;


 scalar_t__ get_java_bin_obj (int *) ;
 int * r_bin_java_get_bin_obj_list_thru_obj (int *) ;

__attribute__((used)) static RList * get_java_bin_obj_list(RAnal *anal) {
 RBinJavaObj *bin_obj = (RBinJavaObj * )get_java_bin_obj(anal);






 return r_bin_java_get_bin_obj_list_thru_obj (bin_obj);
}
