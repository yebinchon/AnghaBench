
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int const DOUBLE_SHORTEST_DECIMAL_LEN ;
 int double_to_shortest_decimal_bufn (double,char*) ;

int
double_to_shortest_decimal_buf(double f, char *result)
{
 const int index = double_to_shortest_decimal_bufn(f, result);


 Assert(index < DOUBLE_SHORTEST_DECIMAL_LEN);
 result[index] = '\0';
 return index;
}
