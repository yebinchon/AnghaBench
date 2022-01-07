
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int FILE ;


 int CMD_LEN_MAX ;
 int DPRINTF_S (char*) ;
 int FALSE ;
 int F_CLI ;
 int PATH_MAX ;
 scalar_t__ S_ISREG (int ) ;
 int TRUE ;
 int close (int) ;
 int create_tmp_file () ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fprintf (int *,char*,...) ;
 char* g_buf ;
 int g_tmpfpath ;
 char* get_output (char*,int ,char*,char*,char const*,int) ;
 int pager ;
 int pipetof (char*,int *) ;
 int spawn (int ,int ,int *,int *,int ) ;
 int unlink (int ) ;
 size_t xstrlcpy (char*,char const*,int ) ;

__attribute__((used)) static bool show_stats(const char *fpath, const struct stat *sb)
{
 int fd;
 FILE *fp;
 char *p, *begin = g_buf;
 size_t r;

 fd = create_tmp_file();
 if (fd == -1)
  return FALSE;

 r = xstrlcpy(g_buf, "stat \"", PATH_MAX);
 r += xstrlcpy(g_buf + r - 1, fpath, PATH_MAX);
 g_buf[r - 2] = '\"';
 g_buf[r - 1] = '\0';
 DPRINTF_S(g_buf);

 fp = fdopen(fd, "w");
 if (!fp) {
  close(fd);
  return FALSE;
 }

 pipetof(g_buf, fp);

 if (S_ISREG(sb->st_mode)) {

  p = get_output(g_buf, CMD_LEN_MAX, "file", "-b", fpath, FALSE);
  if (p) {
   fprintf(fp, "\n\n ");
   while (*p) {
    if (*p == ',') {
     *p = '\0';
     fprintf(fp, " %s\n", begin);
     begin = p + 1;
    }

    ++p;
   }
   fprintf(fp, " %s", begin);
  }
 }

 fprintf(fp, "\n\n");
 fclose(fp);
 close(fd);

 spawn(pager, g_tmpfpath, ((void*)0), ((void*)0), F_CLI);
 unlink(g_tmpfpath);
 return TRUE;
}
