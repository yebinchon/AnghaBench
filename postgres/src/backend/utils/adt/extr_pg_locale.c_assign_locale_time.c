
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CurrentLCTimeValid ;

void
assign_locale_time(const char *newval, void *extra)
{
 CurrentLCTimeValid = 0;
}
