
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* pg_strtok_ptr ;

const char *
pg_strtok(int *length)
{
 const char *local_str;
 const char *ret_str;

 local_str = pg_strtok_ptr;

 while (*local_str == ' ' || *local_str == '\n' || *local_str == '\t')
  local_str++;

 if (*local_str == '\0')
 {
  *length = 0;
  pg_strtok_ptr = local_str;
  return ((void*)0);
 }




 ret_str = local_str;

 if (*local_str == '(' || *local_str == ')' ||
  *local_str == '{' || *local_str == '}')
 {

  local_str++;
 }
 else
 {

  while (*local_str != '\0' &&
      *local_str != ' ' && *local_str != '\n' &&
      *local_str != '\t' &&
      *local_str != '(' && *local_str != ')' &&
      *local_str != '{' && *local_str != '}')
  {
   if (*local_str == '\\' && local_str[1] != '\0')
    local_str += 2;
   else
    local_str++;
  }
 }

 *length = local_str - ret_str;


 if (*length == 2 && ret_str[0] == '<' && ret_str[1] == '>')
  *length = 0;

 pg_strtok_ptr = local_str;

 return ret_str;
}
