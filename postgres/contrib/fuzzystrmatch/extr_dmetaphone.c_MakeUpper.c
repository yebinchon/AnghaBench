
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* str; } ;
typedef TYPE_1__ metastring ;


 char toupper (unsigned char) ;

__attribute__((used)) static void
MakeUpper(metastring *s)
{
 char *i;

 for (i = s->str; *i; i++)
  *i = toupper((unsigned char) *i);
}
