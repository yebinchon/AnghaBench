
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int F_CLI ;
 int TRUE ;
 int close (int) ;
 int create_tmp_file () ;
 int g_tmpfpath ;
 int pager ;
 size_t selbufpos ;
 size_t seltofile (int,int *) ;
 int spawn (int ,int ,int *,int *,int ) ;
 int unlink (int ) ;

__attribute__((used)) static bool listselbuf(void)
{
 int fd;
 size_t pos;

 if (!selbufpos)
  return FALSE;

 fd = create_tmp_file();
 if (fd == -1)
  return FALSE;

 pos = seltofile(fd, ((void*)0));

 close(fd);
 if (pos && pos == selbufpos)
  spawn(pager, g_tmpfpath, ((void*)0), ((void*)0), F_CLI);
 unlink(g_tmpfpath);

 return TRUE;
}
