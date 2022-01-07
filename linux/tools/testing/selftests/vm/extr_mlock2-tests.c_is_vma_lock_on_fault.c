
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LOCKED ;
 int RSS ;
 int SIZE ;
 int fclose (int *) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 int is_vmflag_set (unsigned long,int ) ;
 int printf (char*) ;
 int * seek_to_smaps_entry (unsigned long) ;
 int sscanf (char*,char*,unsigned long*) ;
 int strlen (int ) ;
 int strstr (char*,int ) ;

__attribute__((used)) static bool is_vma_lock_on_fault(unsigned long addr)
{
 bool ret = 0;
 bool locked;
 FILE *smaps = ((void*)0);
 unsigned long vma_size, vma_rss;
 char *line = ((void*)0);
 char *value;
 size_t size = 0;

 locked = is_vmflag_set(addr, LOCKED);
 if (!locked)
  goto out;

 smaps = seek_to_smaps_entry(addr);
 if (!smaps) {
  printf("Unable to parse /proc/self/smaps\n");
  goto out;
 }

 while (getline(&line, &size, smaps) > 0) {
  if (!strstr(line, SIZE)) {
   free(line);
   line = ((void*)0);
   size = 0;
   continue;
  }

  value = line + strlen(SIZE);
  if (sscanf(value, "%lu kB", &vma_size) < 1) {
   printf("Unable to parse smaps entry for Size\n");
   goto out;
  }
  break;
 }

 while (getline(&line, &size, smaps) > 0) {
  if (!strstr(line, RSS)) {
   free(line);
   line = ((void*)0);
   size = 0;
   continue;
  }

  value = line + strlen(RSS);
  if (sscanf(value, "%lu kB", &vma_rss) < 1) {
   printf("Unable to parse smaps entry for Rss\n");
   goto out;
  }
  break;
 }

 ret = locked && (vma_rss < vma_size);
out:
 free(line);
 if (smaps)
  fclose(smaps);
 return ret;
}
