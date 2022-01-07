
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ r_sys_cmd (char*) ;

__attribute__((used)) static bool checkExtract() {





 if (r_sys_cmd ("cabextract -v > /dev/null") != 0) {
  return 0;
 }

 return 1;
}
