
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ARRAY_TYPE { ____Placeholder_ARRAY_TYPE } ARRAY_TYPE ;


 int ECPG_ARRAY_ARRAY ;
 int ECPG_ARRAY_VECTOR ;

__attribute__((used)) static bool
array_delimiter(enum ARRAY_TYPE isarray, char c)
{
 if (isarray == ECPG_ARRAY_ARRAY && c == ',')
  return 1;

 if (isarray == ECPG_ARRAY_VECTOR && c == ' ')
  return 1;

 return 0;
}
