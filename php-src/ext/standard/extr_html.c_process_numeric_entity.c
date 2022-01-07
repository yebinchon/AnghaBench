
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_long ;


 int FAILURE ;
 int SUCCESS ;
 scalar_t__ ZEND_STRTOL (char const*,char**,int) ;
 scalar_t__ Z_L (int) ;
 int isdigit (char const) ;
 int isxdigit (char const) ;

__attribute__((used)) static inline int process_numeric_entity(const char **buf, unsigned *code_point)
{
 zend_long code_l;
 int hexadecimal = (**buf == 'x' || **buf == 'X');
 char *endptr;

 if (hexadecimal && (**buf != '\0'))
  (*buf)++;



 if ((hexadecimal && !isxdigit(**buf)) ||
   (!hexadecimal && !isdigit(**buf))) {
  return FAILURE;
 }

 code_l = ZEND_STRTOL(*buf, &endptr, hexadecimal ? 16 : 10);

 *buf = endptr;

 if (**buf != ';')
  return FAILURE;



 if (code_l > Z_L(0x10FFFF))
  return FAILURE;

 if (code_point != ((void*)0))
  *code_point = (unsigned)code_l;

 return SUCCESS;
}
