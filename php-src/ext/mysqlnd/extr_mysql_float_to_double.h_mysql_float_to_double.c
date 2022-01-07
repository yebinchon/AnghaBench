
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLT_DIG ;
 int MAX_CHAR_BUF_LEN ;
 int php_gcvt (float,int ,char,char,char*) ;
 int sprintf (char*,char*,int,float) ;
 double zend_strtod (char*,int *) ;

__attribute__((used)) static inline double mysql_float_to_double(float fp4, int decimals) {
 char num_buf[MAX_CHAR_BUF_LEN];

 if (decimals < 0) {
  php_gcvt(fp4, FLT_DIG, '.', 'e', num_buf);
 } else {
  sprintf(num_buf, "%.*f", decimals, fp4);
 }

 return zend_strtod(num_buf, ((void*)0));
}
