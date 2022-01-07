
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* verb; int sense; } ;
typedef TYPE_1__ VerbSense ;


 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int workshop_frame_sensitivities (TYPE_1__*) ;

void workshop_sensitivity(int num, char *table)
{

 VerbSense *vs;
 int i;
 char *s;
 if ((num < 1) || (num > 500)) {
  return;
 }

 vs = (VerbSense *)malloc((num+1)*sizeof(VerbSense));



 s = table;
 for (i = 0; i < num; i++) {
  while (*s == ' ') {
   s++;
  }
  vs[i].verb = s;
  while (*s && (*s != ' ') && (*s != '\001')) {
   s++;
  }
  if (*s == 0) {
   vs[i].verb = ((void*)0);
   break;
  }
  if (*s == '\001') {
   *s = 0;
   s++;
  }
  *s = 0;
  s++;
  while (*s == ' ') {
   s++;
  }
  if (*s == '1') {
   vs[i].sense = 1;
  } else {
   vs[i].sense = 0;
  }
  s++;
 }
 vs[i].verb = ((void*)0);

 workshop_frame_sensitivities(vs);

 free(vs);
}
