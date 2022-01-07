
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DOUBLE_SHORTEST_DECIMAL_LEN ;
 int double_to_shortest_decimal_buf (double,char* const) ;
 scalar_t__ palloc (int ) ;

char *
double_to_shortest_decimal(double f)
{
 char *const result = (char *) palloc(DOUBLE_SHORTEST_DECIMAL_LEN);

 double_to_shortest_decimal_buf(f, result);
 return result;
}
