
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cEnv_t {int TRIPLET; int SHDR; int LDFLAGS; int CFLAGS; int CC; int SFLIBPATH; } ;



__attribute__((used)) static inline bool r_egg_Cfile_check_cEnv(struct cEnv_t *cEnv) {
 return (!cEnv->SFLIBPATH || !cEnv->CC || !cEnv->CFLAGS || !cEnv->LDFLAGS
  || !cEnv->SHDR || !cEnv->TRIPLET);
}
