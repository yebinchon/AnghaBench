
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zic_t ;


 int _ (char*) ;
 scalar_t__ gethms (char*,int ) ;
 size_t strlen (char*) ;

__attribute__((used)) static zic_t
getsave(char *field, bool *isdst)
{
 int dst = -1;
 zic_t save;
 size_t fieldlen = strlen(field);

 if (fieldlen != 0)
 {
  char *ep = field + fieldlen - 1;

  switch (*ep)
  {
   case 'd':
    dst = 1;
    *ep = '\0';
    break;
   case 's':
    dst = 0;
    *ep = '\0';
    break;
  }
 }
 save = gethms(field, _("invalid saved time"));
 *isdst = dst < 0 ? save != 0 : dst;
 return save;
}
