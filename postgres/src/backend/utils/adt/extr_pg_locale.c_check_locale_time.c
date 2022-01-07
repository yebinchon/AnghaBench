
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int LC_TIME ;
 int check_locale (int ,char*,int *) ;

bool
check_locale_time(char **newval, void **extra, GucSource source)
{
 return check_locale(LC_TIME, *newval, ((void*)0));
}
