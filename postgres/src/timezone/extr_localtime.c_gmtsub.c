
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int chars; } ;
struct pg_tm {int tm_zone; } ;
typedef int pg_time_t ;
typedef scalar_t__ int32 ;


 int gmtload (struct state*) ;
 scalar_t__ malloc (int) ;
 struct pg_tm* timesub (int const*,scalar_t__,struct state*,struct pg_tm*) ;
 int wildabbr ;

__attribute__((used)) static struct pg_tm *
gmtsub(pg_time_t const *timep, int32 offset,
    struct pg_tm *tmp)
{
 struct pg_tm *result;


 static struct state *gmtptr = ((void*)0);

 if (gmtptr == ((void*)0))
 {

  gmtptr = (struct state *) malloc(sizeof(struct state));
  if (gmtptr == ((void*)0))
   return ((void*)0);
  gmtload(gmtptr);
 }

 result = timesub(timep, offset, gmtptr, tmp);





 if (offset != 0)
  tmp->tm_zone = wildabbr;
 else
  tmp->tm_zone = gmtptr->chars;

 return result;
}
