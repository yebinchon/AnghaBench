
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E_ERROR ;
 int memset (int*,int ,int) ;
 int* safe_emalloc (int,int,int ) ;
 int soap_error0 (int ,char*) ;

__attribute__((used)) static int* get_position_12(int dimension, const char* str)
{
 int *pos;
 int i = -1, flag = 0;

 pos = safe_emalloc(sizeof(int), dimension, 0);
 memset(pos,0,sizeof(int)*dimension);
 while (*str != '\0' && (*str < '0' || *str > '9') && (*str != '*')) {
  str++;
 }
 if (*str == '*') {
  str++;
  i++;
 }
 while (*str != '\0') {
  if (*str >= '0' && *str <= '9') {
   if (flag == 0) {
    i++;
    flag = 1;
   }
   pos[i] = (pos[i]*10)+(*str-'0');
  } else if (*str == '*') {
   soap_error0(E_ERROR, "Encoding: '*' may only be first arraySize value in list");
  } else {
    flag = 0;
  }
  str++;
 }
 return pos;
}
