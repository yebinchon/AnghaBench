
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFSIZ ;
 int _exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 int perror (char*) ;
 int sscanf (char*,char*,unsigned long*,unsigned long*,char*,unsigned long*,char*,unsigned long*,char*) ;

__attribute__((used)) static FILE *seek_to_smaps_entry(unsigned long addr)
{
 FILE *file;
 char *line = ((void*)0);
 size_t size = 0;
 unsigned long start, end;
 char perms[5];
 unsigned long offset;
 char dev[32];
 unsigned long inode;
 char path[BUFSIZ];

 file = fopen("/proc/self/smaps", "r");
 if (!file) {
  perror("fopen smaps");
  _exit(1);
 }

 while (getline(&line, &size, file) > 0) {
  if (sscanf(line, "%lx-%lx %s %lx %s %lu %s\n",
      &start, &end, perms, &offset, dev, &inode, path) < 6)
   goto next;

  if (start <= addr && addr < end)
   goto out;

next:
  free(line);
  line = ((void*)0);
  size = 0;
 }

 fclose(file);
 file = ((void*)0);

out:
 free(line);
 return file;
}
