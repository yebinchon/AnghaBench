
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 char* Z_STRVAL_P (int *) ;
 int atoi (char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *fpm_conf_set_time(zval *value, void **config, intptr_t offset)
{
 char *val = Z_STRVAL_P(value);
 int len = strlen(val);
 char suffix;
 int seconds;
 if (!len) {
  return "invalid time value";
 }

 suffix = val[len-1];
 switch (suffix) {
  case 'm' :
   val[len-1] = '\0';
   seconds = 60 * atoi(val);
   break;
  case 'h' :
   val[len-1] = '\0';
   seconds = 60 * 60 * atoi(val);
   break;
  case 'd' :
   val[len-1] = '\0';
   seconds = 24 * 60 * 60 * atoi(val);
   break;
  case 's' :
   val[len-1] = '\0';
   suffix = '0';
  default :
   if (suffix < '0' || suffix > '9') {
    return "unknown suffix used in time value";
   }
   seconds = atoi(val);
   break;
 }

 * (int *) ((char *) *config + offset) = seconds;
 return ((void*)0);
}
