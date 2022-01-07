
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_view_t ;


 int bfree (int *) ;
 int obs_view_free (int *) ;

void obs_view_destroy(obs_view_t *view)
{
 if (view) {
  obs_view_free(view);
  bfree(view);
 }
}
