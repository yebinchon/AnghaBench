
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ll ;


 int strcasecmp (char const* const,char const* const) ;
 int strcoll (char const* const,char const* const) ;
 scalar_t__ strtoll (char const* const,char**,int) ;

__attribute__((used)) static int xstricmp(const char * const s1, const char * const s2)
{
 char *p1, *p2;

 ll v1 = strtoll(s1, &p1, 10);
 ll v2 = strtoll(s2, &p2, 10);


 if (s1 != p1 || s2 != p2) {

  if (s1 != p1 && s2 != p2) {
   if (v2 > v1)
    return -1;

   if (v1 > v2)
    return 1;
  }


  if (s1 == p1)
   return 1;


  if (s2 == p2)
   return -1;
 }



 return strcoll(s1, s2);



}
