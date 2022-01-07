
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char const* VMFLAGS ;
 int fclose (int *) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 int printf (char*) ;
 int * seek_to_smaps_entry (unsigned long) ;
 int strlen (char const*) ;
 int * strstr (char*,char const*) ;

__attribute__((used)) static bool is_vmflag_set(unsigned long addr, const char *vmflag)
{
 char *line = ((void*)0);
 char *flags;
 size_t size = 0;
 bool ret = 0;
 FILE *smaps;

 smaps = seek_to_smaps_entry(addr);
 if (!smaps) {
  printf("Unable to parse /proc/self/smaps\n");
  goto out;
 }

 while (getline(&line, &size, smaps) > 0) {
  if (!strstr(line, VMFLAGS)) {
   free(line);
   line = ((void*)0);
   size = 0;
   continue;
  }

  flags = line + strlen(VMFLAGS);
  ret = (strstr(flags, vmflag) != ((void*)0));
  goto out;
 }

out:
 free(line);
 fclose(smaps);
 return ret;
}
