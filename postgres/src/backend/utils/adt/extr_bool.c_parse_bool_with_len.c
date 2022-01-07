
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_strncasecmp (char const*,char*,size_t) ;

bool
parse_bool_with_len(const char *value, size_t len, bool *result)
{
 switch (*value)
 {
  case 't':
  case 'T':
   if (pg_strncasecmp(value, "true", len) == 0)
   {
    if (result)
     *result = 1;
    return 1;
   }
   break;
  case 'f':
  case 'F':
   if (pg_strncasecmp(value, "false", len) == 0)
   {
    if (result)
     *result = 0;
    return 1;
   }
   break;
  case 'y':
  case 'Y':
   if (pg_strncasecmp(value, "yes", len) == 0)
   {
    if (result)
     *result = 1;
    return 1;
   }
   break;
  case 'n':
  case 'N':
   if (pg_strncasecmp(value, "no", len) == 0)
   {
    if (result)
     *result = 0;
    return 1;
   }
   break;
  case 'o':
  case 'O':

   if (pg_strncasecmp(value, "on", (len > 2 ? len : 2)) == 0)
   {
    if (result)
     *result = 1;
    return 1;
   }
   else if (pg_strncasecmp(value, "off", (len > 2 ? len : 2)) == 0)
   {
    if (result)
     *result = 0;
    return 1;
   }
   break;
  case '1':
   if (len == 1)
   {
    if (result)
     *result = 1;
    return 1;
   }
   break;
  case '0':
   if (len == 1)
   {
    if (result)
     *result = 0;
    return 1;
   }
   break;
  default:
   break;
 }

 if (result)
  *result = 0;
 return 0;
}
