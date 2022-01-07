
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int firstLine ;
typedef int RCore ;


 int O_RDONLY ;
 int r_sandbox_close (int) ;
 int r_sandbox_open (char const*,int ,int ) ;
 int r_sandbox_read (int,int *,int) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static char *langFromHashbang(RCore *core, const char *file) {
 int fd = r_sandbox_open (file, O_RDONLY, 0);
 if (fd != -1) {
  char firstLine[128] = {0};
  int len = r_sandbox_read (fd, (ut8*)firstLine, sizeof (firstLine) - 1);
  firstLine[len] = 0;
  if (!strncmp (firstLine, "#!/", 3)) {

   char *nl = strchr (firstLine, '\n');
   if (nl) {
    *nl = 0;
   }
   nl = strchr (firstLine, ' ');
   if (nl) {
    *nl = 0;
   }
   return strdup (firstLine + 2);
  }
  r_sandbox_close (fd);
 }
 return ((void*)0);
}
