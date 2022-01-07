
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF_S (int ) ;
 size_t STR_TMPFILE ;
 scalar_t__ TMP_LEN_MAX ;
 int errno ;
 scalar_t__ g_tmpfpath ;
 scalar_t__ g_tmpfplen ;
 int * messages ;
 int mkstemp (scalar_t__) ;
 int strerror (int ) ;
 int xstrlcpy (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int create_tmp_file(void)
{
 xstrlcpy(g_tmpfpath + g_tmpfplen - 1, messages[STR_TMPFILE], TMP_LEN_MAX - g_tmpfplen);

 int fd = mkstemp(g_tmpfpath);

 if (fd == -1) {
  DPRINTF_S(strerror(errno));
 }

 return fd;
}
