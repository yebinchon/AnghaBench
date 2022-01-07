
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct luma_wipe_info {int wipes_list; int luma_image; } ;


 int bfree (struct luma_wipe_info*) ;
 int gs_image_file_free (int *) ;
 int obs_data_release (int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void luma_wipe_destroy(void *data)
{
 struct luma_wipe_info *lwipe = data;

 obs_enter_graphics();
 gs_image_file_free(&lwipe->luma_image);
 obs_leave_graphics();

 obs_data_release(lwipe->wipes_list);

 bfree(lwipe);
}
