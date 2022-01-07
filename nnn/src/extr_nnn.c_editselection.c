
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef size_t ssize_t ;


 int DPRINTF_S (char*) ;
 int FALSE ;
 int F_CLI ;
 int F_NOTRACE ;
 int O_RDONLY ;
 int TRUE ;
 int clearselection () ;
 int close (int) ;
 int copier ;
 int create_tmp_file () ;
 int editor ;
 int fstat (int,struct stat*) ;
 int * g_tmpfpath ;
 int nselected ;
 int open (int *,int ) ;
 char* pselbuf ;
 size_t read (int,char*,int ) ;
 int resetselind () ;
 int selbuflen ;
 scalar_t__ selbufpos ;
 int seltofile (int,int *) ;
 int spawn (int ,int *,int *,int *,int ) ;
 int unlink (int *) ;
 int writesel (char*,scalar_t__) ;

__attribute__((used)) static bool editselection(void)
{
 bool ret = FALSE;
 int fd, lines = 0;
 ssize_t count;
 struct stat sb;

 if (!selbufpos) {
  DPRINTF_S("empty selection");
  return FALSE;
 }

 fd = create_tmp_file();
 if (fd == -1) {
  DPRINTF_S("couldn't create tmp file");
  return FALSE;
 }

 seltofile(fd, ((void*)0));
 close(fd);

 spawn(editor, g_tmpfpath, ((void*)0), ((void*)0), F_CLI);

 fd = open(g_tmpfpath, O_RDONLY);
 if (fd == -1) {
  DPRINTF_S("couldn't read tmp file");
  unlink(g_tmpfpath);
  return FALSE;
 }

 fstat(fd, &sb);

 if (sb.st_size > selbufpos) {
  DPRINTF_S("edited buffer larger than pervious");
  goto emptyedit;
 }

 count = read(fd, pselbuf, selbuflen);
 close(fd);
 unlink(g_tmpfpath);

 if (!count) {
  ret = TRUE;
  goto emptyedit;
 }

 if (count < 0) {
  DPRINTF_S("error reading tmp file");
  goto emptyedit;
 }

 resetselind();
 selbufpos = count;

 pselbuf[--count] = '\0';
 for (--count; count > 0; --count) {

  if (pselbuf[count] == '\n' && pselbuf[count + 1] == '/') {
   ++lines;
   pselbuf[count] = '\0';
  }
 }


 ++lines;

 if (lines > nselected) {
  DPRINTF_S("files added to selection");
  goto emptyedit;
 }

 nselected = lines;
 writesel(pselbuf, selbufpos - 1);
 spawn(copier, ((void*)0), ((void*)0), ((void*)0), F_NOTRACE);

 return TRUE;

emptyedit:
 resetselind();
 clearselection();
 return ret;
}
