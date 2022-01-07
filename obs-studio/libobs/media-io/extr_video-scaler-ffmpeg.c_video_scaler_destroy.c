
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int swscale; } ;
typedef TYPE_1__ video_scaler_t ;


 int bfree (TYPE_1__*) ;
 int sws_freeContext (int ) ;

void video_scaler_destroy(video_scaler_t *scaler)
{
 if (scaler) {
  sws_freeContext(scaler->swscale);
  bfree(scaler);
 }
}
