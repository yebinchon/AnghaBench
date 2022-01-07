
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static int gb_reg_idx (char r) {
 const char *rstr = "bcdehla";
 const char *ptr = strchr (rstr, r);
 return ptr?(int)(size_t)(ptr-rstr):-1;
}
