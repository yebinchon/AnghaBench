
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hyphenate (char*,char*,int *,int *) ;
 unsigned int weight_checkdig (char*,int) ;

__attribute__((used)) static inline void
ean2ISSN(char *isn)
{
 unsigned check;



 hyphenate(isn, isn + 4, ((void*)0), ((void*)0));
 check = weight_checkdig(isn, 8);
 if (check == 10)
  isn[8] = 'X';
 else
  isn[8] = check + '0';
 isn[9] = '\0';
}
