
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;
typedef enum ARRAY_TYPE { ____Placeholder_ARRAY_TYPE } ARRAY_TYPE ;


 int ECPG_ARRAY_NONE ;
 scalar_t__ ECPG_IS_ARRAY (int) ;
 scalar_t__ INFORMIX_MODE (int) ;
 int array_boundary (int,char) ;
 int array_delimiter (int,char) ;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static bool
garbage_left(enum ARRAY_TYPE isarray, char **scan_length, enum COMPAT_MODE compat)
{




 if (isarray == ECPG_ARRAY_NONE)
 {
  if (INFORMIX_MODE(compat) && **scan_length == '.')
  {

   do
   {
    (*scan_length)++;
   } while (isdigit((unsigned char) **scan_length));
  }

  if (**scan_length != ' ' && **scan_length != '\0')
   return 1;
 }
 else if (ECPG_IS_ARRAY(isarray) && !array_delimiter(isarray, **scan_length) && !array_boundary(isarray, **scan_length))
  return 1;

 return 0;
}
