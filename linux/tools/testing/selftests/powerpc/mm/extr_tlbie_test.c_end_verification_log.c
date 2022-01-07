
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LOGDIR_NAME_SIZE ;
 int fclose (int *) ;
 int ** fp ;
 int logdir ;
 char* logfilename ;
 int printf (char*,unsigned int,unsigned int,char*) ;
 int remove (char*) ;
 int sprintf (char*,char*,unsigned int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static inline void end_verification_log(unsigned int tid, unsigned nr_anamolies)
{
 FILE *f = fp[tid];
 char logfile[30];
 char path[LOGDIR_NAME_SIZE + 30];
 char separator[] = "/";

 fclose(f);

 if (nr_anamolies == 0) {
  remove(path);
  return;
 }

 sprintf(logfile, logfilename, tid);
 strcpy(path, logdir);
 strcat(path, separator);
 strcat(path, logfile);

 printf("Thread %02d chunk has %d corrupted words. For details check %s\n",
  tid, nr_anamolies, path);
}
