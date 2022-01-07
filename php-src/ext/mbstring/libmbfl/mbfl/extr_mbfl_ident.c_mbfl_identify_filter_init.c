
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbfl_identify_filter ;
typedef int mbfl_encoding ;
typedef enum mbfl_no_encoding { ____Placeholder_mbfl_no_encoding } mbfl_no_encoding ;


 int const mbfl_encoding_pass ;
 int mbfl_identify_filter_init2 (int *,int const*) ;
 int * mbfl_no2encoding (int) ;

int mbfl_identify_filter_init(mbfl_identify_filter *filter, enum mbfl_no_encoding encoding)
{
 const mbfl_encoding *enc = mbfl_no2encoding(encoding);
 return mbfl_identify_filter_init2(filter, enc ? enc: &mbfl_encoding_pass);
}
