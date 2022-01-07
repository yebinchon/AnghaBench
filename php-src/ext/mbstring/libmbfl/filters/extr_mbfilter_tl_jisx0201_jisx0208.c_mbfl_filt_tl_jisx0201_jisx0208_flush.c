
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; } ;
typedef TYPE_1__ mbfl_filt_tl_jisx0201_jisx0208_param ;
struct TYPE_5__ {int cache; int (* output_function ) (scalar_t__,int ) ;int (* flush_function ) (int ) ;int data; scalar_t__ status; scalar_t__ opaque; } ;
typedef TYPE_2__ mbfl_convert_filter ;


 scalar_t__* hankana2zenhira_table ;
 scalar_t__* hankana2zenkana_table ;
 int stub1 (scalar_t__,int ) ;
 int stub2 (scalar_t__,int ) ;
 int stub3 (int ) ;

int
mbfl_filt_tl_jisx0201_jisx0208_flush(mbfl_convert_filter *filt)
{
 int ret, n;
 int mode = ((mbfl_filt_tl_jisx0201_jisx0208_param *)filt->opaque)->mode;

 ret = 0;
 if (filt->status) {
  n = (filt->cache - 0xff60) & 0x3f;
  if (mode & 0x100) {
   ret = (*filt->output_function)(0x3000 + hankana2zenkana_table[n], filt->data);
  } else if (mode & 0x200) {
   ret = (*filt->output_function)(0x3000 + hankana2zenhira_table[n], filt->data);
  }
  filt->status = 0;
 }

 if (filt->flush_function != ((void*)0)) {
  return (*filt->flush_function)(filt->data);
 }

 return ret;
}
