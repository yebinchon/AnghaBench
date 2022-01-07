
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int separators ;


 scalar_t__ SEP_TEST ;
 int memset (char*,int ,int) ;

char *
gd_strtok_r (char *s, char *sep, char **state)
{
  char separators[256];
  char *result = 0;
  memset (separators, 0, sizeof (separators));
  while (*sep)
    {
      separators[*((unsigned char *) sep)] = 1;
      sep++;
    }
  if (!s)
    {

      s = *state;
    }

  if (!(*s))
    {
      *state = s;
      return 0;
    }

  if (SEP_TEST)
    {
      do
 {
   s++;
 }
      while (SEP_TEST);

      if (!(*s))
 {
   *state = s;
   return 0;
 }
    }

  result = s;
  do
    {

      if (!(*s))
 {
   *state = s;
   return result;
 }
      s++;
    }
  while (!SEP_TEST);

  *s = '\0';
  do
    {
      s++;
    }
  while (SEP_TEST);

  *state = s;
  return result;
}
