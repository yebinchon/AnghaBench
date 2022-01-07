
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLpgSQL_nsitem ;


 int * ns_top ;

PLpgSQL_nsitem *
plpgsql_ns_top(void)
{
 return ns_top;
}
