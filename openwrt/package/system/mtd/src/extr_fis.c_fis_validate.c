
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fis_part {scalar_t__ name; int size; } ;
struct TYPE_2__ {int* name; } ;
struct fis_image_desc {TYPE_1__ hdr; } ;


 int fis_close () ;
 int fis_erasesize ;
 struct fis_image_desc* fis_open () ;
 int fprintf (int ,char*) ;
 int stderr ;
 int strncmp (char*,char*,int) ;

int
fis_validate(struct fis_part *old, int n_old, struct fis_part *new, int n_new)
{
 struct fis_image_desc *desc;
 void *end;
 int found = 0;
 int i;

 desc = fis_open();
 if (!desc)
  return -1;

 for (i = 0; i < n_new - 1; i++) {
  if (!new[i].size) {
   fprintf(stderr, "FIS error: only the last partition can detect the size automatically\n");
   i = -1;
   goto done;
  }
 }

 end = desc;
 end = (char *) end + fis_erasesize;
 while ((void *) desc < end) {
  if (!desc->hdr.name[0] || (desc->hdr.name[0] == 0xff))
   break;

  for (i = 0; i < n_old; i++) {
   if (!strncmp((char *) desc->hdr.name, (char *) old[i].name, sizeof(desc->hdr.name))) {
    found++;
    goto next;
   }
  }
next:
  desc++;
  continue;
 }

 if (found == n_old)
  i = 1;
 else
  i = -1;

done:
 fis_close();
 return i;
}
