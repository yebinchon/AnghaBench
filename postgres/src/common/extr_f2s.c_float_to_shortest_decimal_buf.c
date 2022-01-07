
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int const FLOAT_SHORTEST_DECIMAL_LEN ;
 int float_to_shortest_decimal_bufn (float,char*) ;

int
float_to_shortest_decimal_buf(float f, char *result)
{
 const int index = float_to_shortest_decimal_bufn(f, result);


 Assert(index < FLOAT_SHORTEST_DECIMAL_LEN);
 result[index] = '\0';
 return index;
}
