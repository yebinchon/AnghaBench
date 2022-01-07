
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBinJavaObj ;
typedef int RAnal ;


 int eprintf (char*) ;
 scalar_t__ get_java_bin_obj (int *) ;
 int java_update_anal_types (int *,int *) ;
 int r_java_new_method () ;

__attribute__((used)) static int java_cmd_ext(RAnal *anal, const char* input) {
 RBinJavaObj *obj = (RBinJavaObj *) get_java_bin_obj (anal);

 if (!obj) {
  eprintf ("Execute \"af\" to set the current bin, and this will bind the current bin\n");
  return -1;
 }
 switch (*input) {
 case 'c':

  r_java_new_method ();
  break;
 case 'u':
  switch (*(input+1)) {
   case 't': {java_update_anal_types (anal, obj); return 1;}
   default: break;
  }
  break;
 case 's':
  switch (*(input+1)) {

   default: break;
  }
  break;

 default: eprintf("Command not supported"); break;
 }
 return 0;
}
