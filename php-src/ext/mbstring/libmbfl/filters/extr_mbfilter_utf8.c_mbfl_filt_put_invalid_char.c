
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int (* output_function ) (int,int ) ;scalar_t__ cache; scalar_t__ status; } ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSGROUP_MASK ;
 int MBFL_WCSGROUP_THROUGH ;
 int stub1 (int,int ) ;

int mbfl_filt_put_invalid_char(int c, mbfl_convert_filter *filter)
{
 int w;
 w = c & MBFL_WCSGROUP_MASK;
 w |= MBFL_WCSGROUP_THROUGH;
 filter->status = 0;
 filter->cache = 0;
 CK((*filter->output_function)(w, filter->data));
 return 0;
}
