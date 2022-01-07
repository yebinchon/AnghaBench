
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef scalar_t__ gid_t ;


 unsigned int S_IFBLK ;
 unsigned int S_IFCHR ;
 scalar_t__ default_mtime ;
 int ino ;
 int push_hdr (char*) ;
 int push_rest (char const*) ;
 int sprintf (char*,char*,char*,int ,unsigned int,long,long,int,long,int ,int,int,unsigned int,unsigned int,unsigned int,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int cpio_mknod(const char *name, unsigned int mode,
         uid_t uid, gid_t gid, char dev_type,
         unsigned int maj, unsigned int min)
{
 char s[256];

 if (dev_type == 'b')
  mode |= S_IFBLK;
 else
  mode |= S_IFCHR;

 if (name[0] == '/')
  name++;
 sprintf(s,"%s%08X%08X%08lX%08lX%08X%08lX"
        "%08X%08X%08X%08X%08X%08X%08X",
  "070701",
  ino++,
  mode,
  (long) uid,
  (long) gid,
  1,
  (long) default_mtime,
  0,
  3,
  1,
  maj,
  min,
  (unsigned)strlen(name) + 1,
  0);
 push_hdr(s);
 push_rest(name);
 return 0;
}
