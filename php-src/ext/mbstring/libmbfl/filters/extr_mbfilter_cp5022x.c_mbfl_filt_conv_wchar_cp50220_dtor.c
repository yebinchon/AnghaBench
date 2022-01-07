
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * opaque; } ;
typedef TYPE_1__ mbfl_convert_filter ;
struct TYPE_7__ {int (* filter_dtor ) (TYPE_1__*) ;} ;


 int mbfl_filt_conv_common_dtor (TYPE_1__*) ;
 int mbfl_free (int *) ;
 int stub1 (TYPE_1__*) ;
 TYPE_2__ vtbl_tl_jisx0201_jisx0208 ;

__attribute__((used)) static void
mbfl_filt_conv_wchar_cp50220_dtor(mbfl_convert_filter *filt)
{
 vtbl_tl_jisx0201_jisx0208.filter_dtor(filt);

 if (filt->opaque != ((void*)0)) {
  mbfl_free(filt->opaque);
 }

 mbfl_filt_conv_common_dtor(filt);
}
