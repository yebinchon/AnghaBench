
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLOAT_SHORTEST_DECIMAL_LEN ;
 int float_to_shortest_decimal_buf (float,char* const) ;
 scalar_t__ palloc (int ) ;

char *
float_to_shortest_decimal(float f)
{
 char *const result = (char *) palloc(FLOAT_SHORTEST_DECIMAL_LEN);

 float_to_shortest_decimal_buf(f, result);
 return result;
}
