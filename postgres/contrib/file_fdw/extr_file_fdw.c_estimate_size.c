
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_8__ {int pages; double ntuples; int filename; scalar_t__ is_program; } ;
struct TYPE_7__ {scalar_t__ pages; double tuples; double rows; int baserestrictinfo; TYPE_1__* reltarget; } ;
struct TYPE_6__ {int width; } ;
typedef TYPE_2__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_3__ FileFdwPlanState ;
typedef int BlockNumber ;


 int BLCKSZ ;
 int JOIN_INNER ;
 int MAXALIGN (int ) ;
 int SizeofHeapTupleHeader ;
 double clamp_row_est (double) ;
 double clauselist_selectivity (int *,int ,int ,int ,int *) ;
 scalar_t__ stat (int ,struct stat*) ;

__attribute__((used)) static void
estimate_size(PlannerInfo *root, RelOptInfo *baserel,
     FileFdwPlanState *fdw_private)
{
 struct stat stat_buf;
 BlockNumber pages;
 double ntuples;
 double nrows;






 if (fdw_private->is_program || stat(fdw_private->filename, &stat_buf) < 0)
  stat_buf.st_size = 10 * BLCKSZ;




 pages = (stat_buf.st_size + (BLCKSZ - 1)) / BLCKSZ;
 if (pages < 1)
  pages = 1;
 fdw_private->pages = pages;




 if (baserel->pages > 0)
 {





  double density;

  density = baserel->tuples / (double) baserel->pages;
  ntuples = clamp_row_est(density * (double) pages);
 }
 else
 {
  int tuple_width;

  tuple_width = MAXALIGN(baserel->reltarget->width) +
   MAXALIGN(SizeofHeapTupleHeader);
  ntuples = clamp_row_est((double) stat_buf.st_size /
        (double) tuple_width);
 }
 fdw_private->ntuples = ntuples;





 nrows = ntuples *
  clauselist_selectivity(root,
          baserel->baserestrictinfo,
          0,
          JOIN_INNER,
          ((void*)0));

 nrows = clamp_row_est(nrows);


 baserel->rows = nrows;
}
