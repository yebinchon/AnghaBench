
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef scalar_t__ gid_t ;


 scalar_t__ default_mtime ;
 int ino ;
 int push_hdr (char*) ;
 int push_rest (char const*) ;
 int sprintf (char*,char*,char*,int ,unsigned int,long,long,int,long,int ,int,int,int ,int ,unsigned int,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int cpio_mkgeneric(const char *name, unsigned int mode,
         uid_t uid, gid_t gid)
{
 char s[256];

 if (name[0] == '/')
  name++;
 sprintf(s,"%s%08X%08X%08lX%08lX%08X%08lX"
        "%08X%08X%08X%08X%08X%08X%08X",
  "070701",
  ino++,
  mode,
  (long) uid,
  (long) gid,
  2,
  (long) default_mtime,
  0,
  3,
  1,
  0,
  0,
  (unsigned)strlen(name) + 1,
  0);
 push_hdr(s);
 push_rest(name);
 return 0;
}
