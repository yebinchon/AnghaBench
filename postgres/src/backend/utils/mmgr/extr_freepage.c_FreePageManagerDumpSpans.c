
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int next; int npages; } ;
typedef int StringInfo ;
typedef int Size ;
typedef TYPE_1__ FreePageSpanLeader ;
typedef int FreePageManager ;


 int appendStringInfo (int ,char*,int ,...) ;
 int appendStringInfoChar (int ,char) ;
 int fpm_pointer_to_page (char*,TYPE_1__*) ;
 char* fpm_segment_base (int *) ;
 TYPE_1__* relptr_access (char*,int ) ;

__attribute__((used)) static void
FreePageManagerDumpSpans(FreePageManager *fpm, FreePageSpanLeader *span,
       Size expected_pages, StringInfo buf)
{
 char *base = fpm_segment_base(fpm);

 while (span != ((void*)0))
 {
  if (span->npages != expected_pages)
   appendStringInfo(buf, " %zu(%zu)", fpm_pointer_to_page(base, span),
        span->npages);
  else
   appendStringInfo(buf, " %zu", fpm_pointer_to_page(base, span));
  span = relptr_access(base, span->next);
 }

 appendStringInfoChar(buf, '\n');
}
