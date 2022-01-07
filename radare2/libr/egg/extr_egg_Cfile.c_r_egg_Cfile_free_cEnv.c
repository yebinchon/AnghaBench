
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cEnv_t {struct cEnv_t* TRIPLET; struct cEnv_t* SHDR; struct cEnv_t* LDFLAGS; struct cEnv_t* CFLAGS; struct cEnv_t* CC; struct cEnv_t* SFLIBPATH; } ;


 int free (struct cEnv_t*) ;

__attribute__((used)) static void r_egg_Cfile_free_cEnv(struct cEnv_t *cEnv) {
 if (cEnv) {
  free (cEnv->SFLIBPATH);
  free (cEnv->CC);
  free (cEnv->CFLAGS);
  free (cEnv->LDFLAGS);
  free (cEnv->SHDR);
  free (cEnv->TRIPLET);
 }
 free (cEnv);
}
