
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int MAXPATHLEN ;
 int NOCATGETS (char*) ;
 int dummy ;
 int sd ;
 int strlen (char*) ;
 int vim_snprintf (char*,int,int ,char*,int) ;
 int write (int ,char*,int ) ;

void workshop_file_opened(char *filename, int readOnly)
{
 char buffer[2*MAXPATHLEN];
 vim_snprintf(buffer, sizeof(buffer),
   NOCATGETS("loadedFile %s %d\n"), filename, readOnly);
 dummy = write(sd, buffer, strlen(buffer));
}
