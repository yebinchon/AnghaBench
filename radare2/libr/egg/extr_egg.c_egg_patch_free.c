
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct egg_patch_t {int b; } ;


 int free (struct egg_patch_t*) ;
 int r_buf_free (int ) ;

void egg_patch_free (void *p) {
 struct egg_patch_t *ep = (struct egg_patch_t *)p;
 r_buf_free (ep->b);
 free (ep);
}
