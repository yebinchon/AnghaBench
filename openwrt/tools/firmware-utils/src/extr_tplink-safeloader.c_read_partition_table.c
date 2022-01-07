
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flash_partition_entry {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int SEEK_SET ;
 int add_flash_partition (struct flash_partition_entry*,size_t,char*,unsigned long,unsigned long) ;
 int errno ;
 int error (int,int ,char*) ;
 int fprintf (int ,char*) ;
 int fread (char*,int,int,int *) ;
 scalar_t__ fseek (int *,long,int ) ;
 char* memchr (char*,int,int) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int stderr ;
 int strlen (char const*) ;
 int strncpy (char*,char*,int) ;
 unsigned long strtoul (char*,int *,int) ;

__attribute__((used)) static int read_partition_table(
  FILE *file, long offset,
  struct flash_partition_entry *entries, size_t max_entries,
  int type)
{
 char buf[2048];
 char *ptr, *end;
 const char *parthdr = ((void*)0);
 const char *fwuphdr = "fwup-ptn";
 const char *flashhdr = "partition";



 switch(type) {
  case 0:
   parthdr = fwuphdr;
   break;
  case 1:
   parthdr = flashhdr;
   break;
  default:
   error(1, 0, "Invalid partition table");
 }

 if (fseek(file, offset, SEEK_SET) < 0)
  error(1, errno, "Can not seek in the firmware");

 if (fread(buf, 2048, 1, file) != 1)
  error(1, errno, "Can not read fwup-ptn from the firmware");

 buf[2047] = '\0';


 if (memcmp(buf, parthdr, strlen(parthdr)) != 0) {
  fprintf(stderr, "DEBUG: can not find fwuphdr\n");
  return 1;
 }

 ptr = buf;
 end = buf + sizeof(buf);
 while ((ptr + strlen(parthdr)) < end &&
   memcmp(ptr, parthdr, strlen(parthdr)) == 0) {
  char *end_part;
  char *end_element;

  char name[32] = { 0 };
  int name_len = 0;
  unsigned long base = 0;
  unsigned long size = 0;

  end_part = memchr(ptr, '\n', (end - ptr));
  if (end_part == ((void*)0)) {

   break;
  }

  for (int i = 0; i <= 4; i++) {
   if (end_part <= ptr)
    break;

   end_element = memchr(ptr, 0x20, (end_part - ptr));
   if (end_element == ((void*)0)) {
    error(1, errno, "Ignoring the rest of the partition entries.");
    break;
   }

   switch (i) {

    case 0:
     ptr = end_element + 1;
     continue;

    case 1:
     name_len = (end_element - ptr) > 31 ? 31 : (end_element - ptr);
     strncpy(name, ptr, name_len);
     name[name_len] = '\0';
     ptr = end_element + 1;
     continue;


    case 2:
     ptr = end_element + 1;
     continue;


    case 3:
     base = strtoul(ptr, ((void*)0), 16);
     ptr = end_element + 1;
     continue;


    case 4:
     ptr = end_element + 1;

     size = strtoul(ptr, ((void*)0), 16);

     ptr = end_part + 1;
     add_flash_partition(entries, max_entries, name, base, size);
     continue;
   }
  }
 }

 return 0;
}
