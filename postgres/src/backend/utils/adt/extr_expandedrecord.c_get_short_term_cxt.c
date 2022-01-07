
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int eoh_context; } ;
struct TYPE_5__ {int * er_short_term_cxt; TYPE_1__ hdr; } ;
typedef int * MemoryContext ;
typedef TYPE_2__ ExpandedRecordHeader ;


 int ALLOCSET_SMALL_SIZES ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int MemoryContextReset (int *) ;

__attribute__((used)) static MemoryContext
get_short_term_cxt(ExpandedRecordHeader *erh)
{
 if (erh->er_short_term_cxt == ((void*)0))
  erh->er_short_term_cxt =
   AllocSetContextCreate(erh->hdr.eoh_context,
          "expanded record short-term context",
          ALLOCSET_SMALL_SIZES);
 else
  MemoryContextReset(erh->er_short_term_cxt);
 return erh->er_short_term_cxt;
}
