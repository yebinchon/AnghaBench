
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int page_set_context; } ;
typedef TYPE_1__ GistBulkDeleteResult ;


 int CurrentMemoryContext ;
 int GenerationContextCreate (int ,char*,int) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static GistBulkDeleteResult *
create_GistBulkDeleteResult(void)
{
 GistBulkDeleteResult *gist_stats;

 gist_stats = (GistBulkDeleteResult *) palloc0(sizeof(GistBulkDeleteResult));
 gist_stats->page_set_context =
  GenerationContextCreate(CurrentMemoryContext,
        "GiST VACUUM page set context",
        16 * 1024);

 return gist_stats;
}
