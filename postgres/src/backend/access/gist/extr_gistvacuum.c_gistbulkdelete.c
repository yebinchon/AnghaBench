
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IndexVacuumInfo ;
typedef int IndexBulkDeleteResult ;
typedef int IndexBulkDeleteCallback ;
typedef int GistBulkDeleteResult ;


 int * create_GistBulkDeleteResult () ;
 int gistvacuumscan (int *,int *,int ,void*) ;

IndexBulkDeleteResult *
gistbulkdelete(IndexVacuumInfo *info, IndexBulkDeleteResult *stats,
      IndexBulkDeleteCallback callback, void *callback_state)
{
 GistBulkDeleteResult *gist_stats = (GistBulkDeleteResult *) stats;


 if (gist_stats == ((void*)0))
  gist_stats = create_GistBulkDeleteResult();

 gistvacuumscan(info, gist_stats, callback, callback_state);

 return (IndexBulkDeleteResult *) gist_stats;
}
