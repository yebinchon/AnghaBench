
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;


 int REG_EXTENDED ;
 int REG_ICASE ;
 int REG_NOSUB ;
 int mvprintw (scalar_t__,int ,char*,int) ;
 int regcomp (int *,char const*,int) ;
 scalar_t__ xlines ;

__attribute__((used)) static int setfilter(regex_t *regex, const char *filter)
{
 int r = regcomp(regex, filter, REG_NOSUB | REG_EXTENDED | REG_ICASE);

 if (r != 0 && filter && filter[0] != '\0')
  mvprintw(xlines - 1, 0, "regex error: %d\n", r);

 return r;
}
