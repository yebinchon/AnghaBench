
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mime_header_decoder_data {int status; int outdev; int tmpdev; TYPE_1__* conv2_filter; TYPE_2__* conv1_filter; TYPE_3__* deco_filter; } ;
typedef int mbfl_string ;
struct TYPE_7__ {int (* filter_flush ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int (* filter_flush ) (TYPE_2__*) ;} ;
struct TYPE_5__ {int (* filter_flush ) (TYPE_1__*) ;} ;


 int mbfl_convert_filter_devcat (TYPE_2__*,int *) ;
 int mbfl_memory_device_reset (int *) ;
 int * mbfl_memory_device_result (int *,int *) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_1__*) ;

mbfl_string *
mime_header_decoder_result(struct mime_header_decoder_data *pd, mbfl_string *result)
{
 switch (pd->status) {
 case 1:
 case 2:
 case 3:
 case 4:
 case 7:
 case 8:
 case 9:
  mbfl_convert_filter_devcat(pd->conv1_filter, &pd->tmpdev);
  break;
 case 5:
 case 6:
  (*pd->deco_filter->filter_flush)(pd->deco_filter);
  (*pd->conv1_filter->filter_flush)(pd->conv1_filter);
  break;
 }
 (*pd->conv2_filter->filter_flush)(pd->conv2_filter);
 mbfl_memory_device_reset(&pd->tmpdev);
 pd->status = 0;

 return mbfl_memory_device_result(&pd->outdev, result);
}
