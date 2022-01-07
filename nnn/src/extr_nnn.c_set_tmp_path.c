
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uchar ;


 int FALSE ;
 int TMP_LEN_MAX ;
 int TRUE ;
 int fprintf (int ,char*) ;
 int g_tmpfpath ;
 scalar_t__ g_tmpfplen ;
 char* getenv (char*) ;
 int stderr ;
 scalar_t__ xdiraccess (char*) ;
 scalar_t__ xstrlcpy (int ,char*,int ) ;

__attribute__((used)) static bool set_tmp_path(void)
{
 char *path;

 if (xdiraccess("/tmp"))
  g_tmpfplen = (uchar)xstrlcpy(g_tmpfpath, "/tmp", TMP_LEN_MAX);
 else {
  path = getenv("TMPDIR");
  if (path)
   g_tmpfplen = (uchar)xstrlcpy(g_tmpfpath, path, TMP_LEN_MAX);
  else {
   fprintf(stderr, "set TMPDIR\n");
   return FALSE;
  }
 }

 return TRUE;
}
