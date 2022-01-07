
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (int*,int ,int) ;

__attribute__((used)) static void get_position_ex(int dimension, const char* str, int** pos)
{
 int i = 0;

 memset(*pos,0,sizeof(int)*dimension);
 while (*str != ']' && *str != '\0' && i < dimension) {
  if (*str >= '0' && *str <= '9') {
   (*pos)[i] = ((*pos)[i]*10)+(*str-'0');
  } else if (*str == ',') {
   i++;
  }
  str++;
 }
}
