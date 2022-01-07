
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int str; } ;
typedef TYPE_1__ metastring ;


 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static int
SlavoGermanic(metastring *s)
{
 if ((char *) strstr(s->str, "W"))
  return 1;
 else if ((char *) strstr(s->str, "K"))
  return 1;
 else if ((char *) strstr(s->str, "CZ"))
  return 1;
 else if ((char *) strstr(s->str, "WITZ"))
  return 1;
 else
  return 0;
}
