
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ debug ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int maxretries ;
 int pg_usleep (long) ;
 int restoreCommand ;
 long sleeptime ;
 int stderr ;
 int system (int ) ;

__attribute__((used)) static bool
RestoreWALFileForRecovery(void)
{
 int rc = 0;
 int numretries = 0;

 if (debug)
 {
  fprintf(stderr, "running restore:      ");
  fflush(stderr);
 }

 while (numretries <= maxretries)
 {
  rc = system(restoreCommand);
  if (rc == 0)
  {
   if (debug)
   {
    fprintf(stderr, "OK\n");
    fflush(stderr);
   }
   return 1;
  }
  pg_usleep(numretries++ * sleeptime * 1000000L);
 }




 if (debug)
  fprintf(stderr, "not restored\n");
 return 0;
}
