
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int r_core_cmd0 (int *,char const*) ;

__attribute__((used)) static int core_cmd0_wrapper(void *core, const char *cmd) {
 return r_core_cmd0 ((RCore *)core, cmd);
}
