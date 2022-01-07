
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int NR_THERMAL_TRIP_TYPE ;
 int strcmp (char*,int ) ;
 int * trip_type_name ;

__attribute__((used)) static int str_to_trip_type(char *name)
{
 int i;

 for (i = 0; i < NR_THERMAL_TRIP_TYPE; i++) {
  if (!strcmp(name, trip_type_name[i]))
   return i;
 }

 return -ENOENT;
}
