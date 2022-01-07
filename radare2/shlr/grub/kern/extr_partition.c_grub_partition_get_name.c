
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* grub_partition_t ;
typedef int buf ;
struct TYPE_5__ {scalar_t__ number; TYPE_1__* partmap; struct TYPE_5__* parent; } ;
struct TYPE_4__ {char* name; } ;


 int grub_free (char*) ;
 char* grub_malloc (int) ;
 int grub_memcpy (char*,char*,int) ;
 char* grub_realloc (char*,int) ;
 int grub_snprintf (char*,int,char*,char*,scalar_t__) ;
 char* grub_strdup (char*) ;
 int grub_strlen (char*) ;

char *
grub_partition_get_name (const grub_partition_t partition)
{
  char *out = 0;
  int curlen = 0;
  grub_partition_t part;
  for (part = partition; part; part = part->parent)
    {



   char buf[grub_strlen (part->partmap->name) + 25];



   int strl;
      grub_snprintf (buf, sizeof (buf), "%s%d", part->partmap->name,
       part->number + 1);
      strl = grub_strlen (buf);
      if (curlen)
 {
   out = grub_realloc (out, curlen + strl + 2);
   grub_memcpy (out + strl + 1, out, curlen);
   out[curlen + 1 + strl] = 0;
   grub_memcpy (out, buf, strl);
   out[strl] = ',';
   curlen = curlen + 1 + strl;
 }
      else
 {
  if (out){
    grub_free(out);
    out = ((void*)0);
  }
   curlen = strl;
   out = grub_strdup (buf);
 }
    }
  return out;
}
