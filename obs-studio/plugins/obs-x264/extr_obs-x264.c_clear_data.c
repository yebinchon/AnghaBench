
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_x264 {int * extra_data; int * sei; int * context; } ;


 int bfree (int *) ;
 int x264_encoder_close (int *) ;

__attribute__((used)) static void clear_data(struct obs_x264 *obsx264)
{
 if (obsx264->context) {
  x264_encoder_close(obsx264->context);
  bfree(obsx264->sei);
  bfree(obsx264->extra_data);

  obsx264->context = ((void*)0);
  obsx264->sei = ((void*)0);
  obsx264->extra_data = ((void*)0);
 }
}
