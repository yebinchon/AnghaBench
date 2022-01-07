
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {size_t pos; } ;
struct mime_header_encoder_data {int status2; size_t prevpos; size_t linehead; size_t firstindent; char* lwsp; int lwsplen; char* encname; int encnamelen; TYPE_1__* conv2_filter; TYPE_9__ outdev; TYPE_1__* encod_filter; TYPE_1__* encod_filter_backup; TYPE_1__* conv2_filter_backup; } ;
struct TYPE_12__ {int (* filter_function ) (int,TYPE_1__*) ;int (* filter_flush ) (TYPE_1__*) ;} ;


 int mbfl_convert_filter_copy (TYPE_1__*,TYPE_1__*) ;
 int mbfl_memory_device_strncat (TYPE_9__*,char*,int) ;
 int stub1 (int,TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (TYPE_1__*) ;
 int stub4 (TYPE_1__*) ;
 int stub5 (TYPE_1__*) ;
 int stub6 (int,TYPE_1__*) ;
 int stub7 (int,TYPE_1__*) ;
 int stub8 (int,TYPE_1__*) ;

__attribute__((used)) static int
mime_header_encoder_block_collector(int c, void *data)
{
 size_t n;
 struct mime_header_encoder_data *pe = (struct mime_header_encoder_data *)data;

 switch (pe->status2) {
 case 1:
  pe->prevpos = pe->outdev.pos;
  mbfl_convert_filter_copy(pe->conv2_filter, pe->conv2_filter_backup);
  mbfl_convert_filter_copy(pe->encod_filter, pe->encod_filter_backup);
  (*pe->conv2_filter->filter_function)(c, pe->conv2_filter);
  (*pe->conv2_filter->filter_flush)(pe->conv2_filter);
  (*pe->encod_filter->filter_flush)(pe->encod_filter);
  n = pe->outdev.pos - pe->linehead + pe->firstindent;
  pe->outdev.pos = pe->prevpos;
  mbfl_convert_filter_copy(pe->conv2_filter_backup, pe->conv2_filter);
  mbfl_convert_filter_copy(pe->encod_filter_backup, pe->encod_filter);
  if (n >= 74) {
   (*pe->conv2_filter->filter_flush)(pe->conv2_filter);
   (*pe->encod_filter->filter_flush)(pe->encod_filter);
   mbfl_memory_device_strncat(&pe->outdev, "\x3f\x3d", 2);
   mbfl_memory_device_strncat(&pe->outdev, pe->lwsp, pe->lwsplen);
   pe->linehead = pe->outdev.pos;
   pe->firstindent = 0;
   mbfl_memory_device_strncat(&pe->outdev, pe->encname, pe->encnamelen);
   c = (*pe->conv2_filter->filter_function)(c, pe->conv2_filter);
  } else {
   c = (*pe->conv2_filter->filter_function)(c, pe->conv2_filter);
  }
  break;

 default:
  mbfl_memory_device_strncat(&pe->outdev, pe->encname, pe->encnamelen);
  c = (*pe->conv2_filter->filter_function)(c, pe->conv2_filter);
  pe->status2 = 1;
  break;
 }

 return c;
}
