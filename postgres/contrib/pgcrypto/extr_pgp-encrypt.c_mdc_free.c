
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PX_MD ;


 int px_md_free (int *) ;

__attribute__((used)) static void
mdc_free(void *priv)
{
 PX_MD *md = priv;

 px_md_free(md);
}
