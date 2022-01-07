
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_MAJORVERSION ;
 int PG_VERSION ;
 int R_OK ;
 scalar_t__ access (char*,int ) ;
 int free (char*) ;
 int process_file (char*,int) ;
 char* psprintf (char*,char*,int ) ;

__attribute__((used)) static void
process_psqlrc_file(char *filename)
{
 char *psqlrc_minor,
      *psqlrc_major;





 psqlrc_minor = psprintf("%s-%s", filename, PG_VERSION);
 psqlrc_major = psprintf("%s-%s", filename, PG_MAJORVERSION);


 if (access(psqlrc_minor, R_OK) == 0)
  (void) process_file(psqlrc_minor, 0);
 else if (access(psqlrc_major, R_OK) == 0)
  (void) process_file(psqlrc_major, 0);
 else if (access(filename, R_OK) == 0)
  (void) process_file(filename, 0);

 free(psqlrc_minor);
 free(psqlrc_major);
}
