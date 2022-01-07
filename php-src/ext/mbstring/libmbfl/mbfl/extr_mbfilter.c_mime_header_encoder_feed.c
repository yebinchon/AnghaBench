
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mime_header_encoder_data {TYPE_1__* conv1_filter; } ;
struct TYPE_2__ {int (* filter_function ) (int,TYPE_1__*) ;} ;


 int stub1 (int,TYPE_1__*) ;

int
mime_header_encoder_feed(int c, struct mime_header_encoder_data *pe)
{
 return (*pe->conv1_filter->filter_function)(c, pe->conv1_filter);
}
