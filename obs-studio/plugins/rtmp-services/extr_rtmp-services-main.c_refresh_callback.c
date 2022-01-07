
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calldata_t ;


 int UNUSED_PARAMETER (void*) ;
 scalar_t__ calldata_int (int *,char*) ;
 int twitch_ingests_refresh (int) ;

__attribute__((used)) static void refresh_callback(void *unused, calldata_t *cd)
{
 int seconds = (int)calldata_int(cd, "seconds");
 if (seconds <= 0)
  seconds = 3;
 if (seconds > 10)
  seconds = 10;

 twitch_ingests_refresh(seconds);

 UNUSED_PARAMETER(unused);
}
