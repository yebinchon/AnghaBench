
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hyphenate (char*,char*,int *,int *) ;
 int isdigit (unsigned char) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 unsigned int weight_checkdig (char*,int) ;

__attribute__((used)) static inline void
ean2ISBN(char *isn)
{
 char *aux;
 unsigned check;






 if (strncmp("978-", isn, 4) == 0)
 {

  hyphenate(isn, isn + 4, ((void*)0), ((void*)0));
  check = weight_checkdig(isn, 10);
  aux = strchr(isn, '\0');
  while (!isdigit((unsigned char) *--aux));
  if (check == 10)
   *aux = 'X';
  else
   *aux = check + '0';
 }
}
