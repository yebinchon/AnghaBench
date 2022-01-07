
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_view {int dummy; } ;
typedef struct obs_view obs_view_t ;


 int bfree (struct obs_view*) ;
 struct obs_view* bzalloc (int) ;
 int obs_view_init (struct obs_view*) ;

obs_view_t *obs_view_create(void)
{
 struct obs_view *view = bzalloc(sizeof(struct obs_view));

 if (!obs_view_init(view)) {
  bfree(view);
  view = ((void*)0);
 }

 return view;
}
