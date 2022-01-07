
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_8__ {scalar_t__ vaddr; TYPE_1__ text_range; } ;
struct TYPE_7__ {int length; TYPE_3__** entries; } ;
typedef TYPE_2__ RKextIndex ;
typedef TYPE_3__ RKext ;



__attribute__((used)) static RKext *r_kext_index_vget(RKextIndex *index, ut64 vaddr) {
 int imid;
 int imin = 0;
 int imax = index->length - 1;

 while (imin < imax) {
  imid = (imin + imax) / 2;
  RKext *entry = index->entries[imid];
  if ((entry->vaddr + entry->text_range.size) <= vaddr || (entry->vaddr == vaddr && entry->text_range.size == 0)) {
   imin = imid + 1;
  } else {
   imax = imid;
  }
 }

 RKext *minEntry = index->entries[imin];
 if ((imax == imin) && (minEntry->vaddr <= vaddr) && ((minEntry->vaddr + minEntry->text_range.size) > vaddr)) {
  return minEntry;
 }
 return ((void*)0);
}
