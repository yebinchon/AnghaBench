
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mime_header_decoder_data {int dummy; } ;


 int mime_header_decoder_collector (int,struct mime_header_decoder_data*) ;

int
mime_header_decoder_feed(int c, struct mime_header_decoder_data *pd)
{
 return mime_header_decoder_collector(c, pd);
}
