
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLCKSZ ;
 double ceil (int) ;
 int relation_byte_size (double,int) ;

__attribute__((used)) static double
page_size(double tuples, int width)
{
 return ceil(relation_byte_size(tuples, width) / BLCKSZ);
}
