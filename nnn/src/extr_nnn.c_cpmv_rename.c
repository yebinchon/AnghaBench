
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int renamecmd ;
typedef int cmd ;
typedef int buf ;


 int DPRINTF_S (char*) ;
 int DPRINTF_U (int) ;
 int FALSE ;
 int F_CLI ;
 int O_RDONLY ;
 int PATH_MAX ;
 size_t SH_EXEC ;
 int TRUE ;
 int close (int) ;
 char* cp ;
 int create_tmp_file () ;
 int editor ;
 char* g_selpath ;
 char* g_tmpfpath ;
 int lines_in_file (int,char*,int) ;
 char* mv ;
 int open (char*,int ) ;
 int selbufpos ;
 int seltofile (int,int*) ;
 int snprintf (char*,int,char const*,char const*,...) ;
 int spawn (int ,char*,int *,char const*,int ) ;
 int * utils ;

__attribute__((used)) static bool cpmv_rename(int choice, const char *path)
{
 int fd;
 uint count = 0, lines = 0;
 bool ret = FALSE;
 char *cmd = (choice == 'c' ? cp : mv);
 static const char formatcmd[] = "sed -i 's|^\\(\\(.*/\\)\\(.*\\)$\\)|#\\1\\n\\3|' %s";
 static const char renamecmd[] = "sed 's|^\\([^#][^/]\\?.*\\)$|%s/\\1|;s|^#\\(/.*\\)$|\\1|' %s | tr '\\n' '\\0' | xargs -0 -o -n2 %s";
 char buf[sizeof(renamecmd) + sizeof(cmd) + (PATH_MAX << 1)];

 fd = create_tmp_file();
 if (fd == -1)
  return ret;


 if (!selbufpos) {
  snprintf(buf, sizeof(buf), "cat %s | tr '\\0' '\\n' > %s", g_selpath, g_tmpfpath);
  spawn(utils[SH_EXEC], buf, ((void*)0), ((void*)0), F_CLI);

  count = lines_in_file(fd, buf, sizeof(buf));
  if (!count)
   goto finish;
 } else
  seltofile(fd, &count);

 close(fd);

 snprintf(buf, sizeof(buf), formatcmd, g_tmpfpath);
 spawn(utils[SH_EXEC], buf, ((void*)0), path, F_CLI);

 spawn(editor, g_tmpfpath, ((void*)0), path, F_CLI);

 fd = open(g_tmpfpath, O_RDONLY);
 if (fd == -1)
  goto finish;

 lines = lines_in_file(fd, buf, sizeof(buf));
 DPRINTF_U(count);
 DPRINTF_U(lines);
 if (!lines || (2 * count != lines)) {
  DPRINTF_S("num mismatch");
  goto finish;
 }

 snprintf(buf, sizeof(buf), renamecmd, path, g_tmpfpath, cmd);
 spawn(utils[SH_EXEC], buf, ((void*)0), path, F_CLI);
 ret = TRUE;

finish:
 if (fd >= 0)
  close(fd);

 return ret;
}
