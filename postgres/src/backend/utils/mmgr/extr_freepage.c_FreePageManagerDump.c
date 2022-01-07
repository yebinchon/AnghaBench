
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int relptr_off; } ;
struct TYPE_15__ {size_t btree_depth; int * freelist; int btree_recycle; int singleton_npages; int singleton_first_page; int btree_root; int contiguous_pages; TYPE_1__ self; } ;
struct TYPE_14__ {char* data; } ;
typedef TYPE_2__ StringInfoData ;
typedef size_t Size ;
typedef int FreePageSpanLeader ;
typedef TYPE_3__ FreePageManager ;
typedef int FreePageBtree ;


 size_t FPM_NUM_FREELISTS ;
 int FreePageManagerDumpBtree (TYPE_3__*,int *,int *,int ,TYPE_2__*) ;
 int FreePageManagerDumpSpans (TYPE_3__*,int *,size_t,TYPE_2__*) ;
 int appendStringInfo (TYPE_2__*,char*,size_t,...) ;
 int appendStringInfoString (TYPE_2__*,char*) ;
 char* fpm_segment_base (TYPE_3__*) ;
 int initStringInfo (TYPE_2__*) ;
 void* relptr_access (char*,int ) ;
 scalar_t__ relptr_is_null (int ) ;

char *
FreePageManagerDump(FreePageManager *fpm)
{
 char *base = fpm_segment_base(fpm);
 StringInfoData buf;
 FreePageSpanLeader *recycle;
 bool dumped_any_freelist = 0;
 Size f;


 initStringInfo(&buf);


 appendStringInfo(&buf, "metadata: self %zu max contiguous pages = %zu\n",
      fpm->self.relptr_off, fpm->contiguous_pages);


 if (fpm->btree_depth > 0)
 {
  FreePageBtree *root;

  appendStringInfo(&buf, "btree depth %u:\n", fpm->btree_depth);
  root = relptr_access(base, fpm->btree_root);
  FreePageManagerDumpBtree(fpm, root, ((void*)0), 0, &buf);
 }
 else if (fpm->singleton_npages > 0)
 {
  appendStringInfo(&buf, "singleton: %zu(%zu)\n",
       fpm->singleton_first_page, fpm->singleton_npages);
 }


 recycle = relptr_access(base, fpm->btree_recycle);
 if (recycle != ((void*)0))
 {
  appendStringInfoString(&buf, "btree recycle:");
  FreePageManagerDumpSpans(fpm, recycle, 1, &buf);
 }


 for (f = 0; f < FPM_NUM_FREELISTS; ++f)
 {
  FreePageSpanLeader *span;

  if (relptr_is_null(fpm->freelist[f]))
   continue;
  if (!dumped_any_freelist)
  {
   appendStringInfoString(&buf, "freelists:\n");
   dumped_any_freelist = 1;
  }
  appendStringInfo(&buf, "  %zu:", f + 1);
  span = relptr_access(base, fpm->freelist[f]);
  FreePageManagerDumpSpans(fpm, span, f + 1, &buf);
 }


 return buf.data;
}
