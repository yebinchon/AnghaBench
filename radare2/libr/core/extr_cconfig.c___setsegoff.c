
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RConfig ;


 int r_config_set (int *,char*,int ) ;
 int r_str_bool (int) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static inline void __setsegoff(RConfig *cfg, const char *asmarch, int asmbits) {
 int autoseg = (!strncmp (asmarch, "x86", 3) && asmbits == 16);
 r_config_set (cfg, "asm.segoff", r_str_bool (autoseg));
}
