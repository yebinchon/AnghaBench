
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int DEBUG_PRINT_L1 (char*,...) ;
 void** end_addr ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t range_count ;
 void** start_addr ;
 int stderr ;
 char* strerror (int) ;
 char* strstr (char*,char*) ;
 void* strtoull (char*,char**,int) ;
 char* system_ram_str ;

__attribute__((used)) static int build_memory_map(void)
{
 char line[256];
 FILE *fp;
 int i;

 range_count = 0;

 fp = fopen("/proc/iomem", "r");
 if (!fp) {
  fprintf(stderr, "/proc/iomem: error %d: %s\n",
   errno, strerror(errno));
  return -errno;
 }

 while (fgets(line, sizeof(line), fp) != 0) {
  if (strstr(line, system_ram_str)) {
   char *dash, *end_ptr;





   dash = strstr(line, "-");
   dash[0] = 0x20;

   start_addr[range_count] = strtoull(line, &end_ptr, 16);
   end_addr[range_count] = strtoull(end_ptr, ((void*)0), 16);
   range_count++;
  }
 }

 fclose(fp);

 DEBUG_PRINT_L1("RAM Ranges\n");
 for (i = 0; i < range_count; i++)
  DEBUG_PRINT_L1("\trange %d: 0x%llx\t- 0x%llx\n",
          i, start_addr[i], end_addr[i]);

 if (range_count == 0) {
  fprintf(stderr, "No valid address ranges found.  Error.\n");
  return -1;
 }

 return 0;
}
