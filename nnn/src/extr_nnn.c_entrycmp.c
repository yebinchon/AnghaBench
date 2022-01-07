
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uchar ;
struct entry {int flags; scalar_t__ t; scalar_t__ size; scalar_t__ blocks; scalar_t__ name; } ;
typedef struct entry* pEntry ;
struct TYPE_2__ {scalar_t__ extnorder; scalar_t__ blkorder; scalar_t__ sizeorder; scalar_t__ mtimeorder; } ;


 int DIR_OR_LINK_TO_DIR ;
 TYPE_1__ cfg ;
 int cmpfn (scalar_t__,scalar_t__) ;
 int strcasecmp (char*,char*) ;
 int strlen (scalar_t__) ;
 char* xmemrchr (int *,char,int ) ;

__attribute__((used)) static int entrycmp(const void *va, const void *vb)
{
 const struct entry *pa = (pEntry)va;
 const struct entry *pb = (pEntry)vb;

 if ((pb->flags & DIR_OR_LINK_TO_DIR) != (pa->flags & DIR_OR_LINK_TO_DIR)) {
  if (pb->flags & DIR_OR_LINK_TO_DIR)
   return 1;
  return -1;
 }


 if (cfg.mtimeorder) {
  if (pb->t > pa->t)
   return 1;
  if (pb->t < pa->t)
   return -1;
 } else if (cfg.sizeorder) {
  if (pb->size > pa->size)
   return 1;
  if (pb->size < pa->size)
   return -1;
 } else if (cfg.blkorder) {
  if (pb->blocks > pa->blocks)
   return 1;
  if (pb->blocks < pa->blocks)
   return -1;
 } else if (cfg.extnorder && !(pb->flags & DIR_OR_LINK_TO_DIR)) {
  char *extna = xmemrchr((uchar *)pa->name, '.', strlen(pa->name));
  char *extnb = xmemrchr((uchar *)pb->name, '.', strlen(pb->name));

  if (extna || extnb) {
   if (!extna)
    return 1;

   if (!extnb)
    return -1;

   int ret = strcasecmp(extna, extnb);

   if (ret)
    return ret;
  }
 }

 return cmpfn(pa->name, pb->name);
}
