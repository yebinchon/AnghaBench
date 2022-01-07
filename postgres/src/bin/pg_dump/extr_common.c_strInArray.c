
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
strInArray(const char *pattern, char **arr, int arr_size)
{
 int i;

 for (i = 0; i < arr_size; i++)
 {
  if (strcmp(pattern, arr[i]) == 0)
   return i;
 }
 return -1;
}
