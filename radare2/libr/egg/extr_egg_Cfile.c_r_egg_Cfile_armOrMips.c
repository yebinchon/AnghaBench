
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

__attribute__((used)) static inline bool r_egg_Cfile_armOrMips(const char *arch) {
 return (!strcmp (arch, "arm") || !strcmp (arch, "arm64") || !strcmp (arch, "aarch64")
    || !strcmp (arch, "thumb") || !strcmp (arch, "arm32") || !strcmp (arch, "mips")
  || !strcmp (arch, "mips32") || !strcmp (arch, "mips64"));
}
