
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RList ;
typedef int RBinJavaObj ;
typedef int RAnal ;


 int * r_bin_java_get_bin_obj_list_thru_obj (int *) ;
 scalar_t__ r_cmd_java_get_bin_obj (int *) ;

__attribute__((used)) static RList * r_cmd_java_get_bin_obj_list(RAnal *anal) {
 RBinJavaObj *bin_obj = (RBinJavaObj * ) r_cmd_java_get_bin_obj(anal);






 return r_bin_java_get_bin_obj_list_thru_obj (bin_obj);
}
