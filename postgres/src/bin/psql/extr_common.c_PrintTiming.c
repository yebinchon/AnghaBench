
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 double floor (double) ;
 int printf (char*,double,...) ;

__attribute__((used)) static void
PrintTiming(double elapsed_msec)
{
 double seconds;
 double minutes;
 double hours;
 double days;

 if (elapsed_msec < 1000.0)
 {

  printf(_("Time: %.3f ms\n"), elapsed_msec);
  return;
 }







 seconds = elapsed_msec / 1000.0;
 minutes = floor(seconds / 60.0);
 seconds -= 60.0 * minutes;
 if (minutes < 60.0)
 {
  printf(_("Time: %.3f ms (%02d:%06.3f)\n"),
      elapsed_msec, (int) minutes, seconds);
  return;
 }

 hours = floor(minutes / 60.0);
 minutes -= 60.0 * hours;
 if (hours < 24.0)
 {
  printf(_("Time: %.3f ms (%02d:%02d:%06.3f)\n"),
      elapsed_msec, (int) hours, (int) minutes, seconds);
  return;
 }

 days = floor(hours / 24.0);
 hours -= 24.0 * days;
 printf(_("Time: %.3f ms (%.0f d %02d:%02d:%06.3f)\n"),
     elapsed_msec, days, (int) hours, (int) minutes, seconds);
}
