
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int r_core_cmdf (int *,char*,char const*) ;

__attribute__((used)) static int cmd_ox(void *data, const char *input) {
 return r_core_cmdf ((RCore*)data, "s 0%s", input);
}
