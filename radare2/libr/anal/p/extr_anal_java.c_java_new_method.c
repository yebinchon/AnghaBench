
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;


 int METHOD_START ;
 int r_java_new_method () ;

__attribute__((used)) static int java_new_method (ut64 method_start) {
 METHOD_START = method_start;

 r_java_new_method ();
 return 0;
}
