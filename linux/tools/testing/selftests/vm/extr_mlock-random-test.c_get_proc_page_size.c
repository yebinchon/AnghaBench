
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 int printf (char*,...) ;
 int * seek_to_smaps_entry (unsigned long) ;
 int sscanf (char*,char*,unsigned long*) ;
 int strstr (char*,char*) ;

int get_proc_page_size(unsigned long addr)
{
 FILE *smaps;
 char *line;
 unsigned long mmupage_size = 0;
 size_t size;

 smaps = seek_to_smaps_entry(addr);
 if (!smaps) {
  printf("Unable to parse /proc/self/smaps\n");
  return 0;
 }

 while (getline(&line, &size, smaps) > 0) {
  if (!strstr(line, "MMUPageSize")) {
   free(line);
   line = ((void*)0);
   size = 0;
   continue;
  }


  if (sscanf(line, "MMUPageSize:    %8lu kB",
     &mmupage_size) < 1) {
   printf("Unable to parse smaps entry for Size:%s\n",
     line);
   break;
  }

 }
 free(line);
 if (smaps)
  fclose(smaps);
 return mmupage_size << 10;
}
