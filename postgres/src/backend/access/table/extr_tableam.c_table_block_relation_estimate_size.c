
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef double int32 ;
struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {int relhassubclass; scalar_t__ relallvisible; scalar_t__ reltuples; scalar_t__ relpages; } ;
typedef double Size ;
typedef TYPE_2__* Relation ;
typedef int BlockNumber ;


 int RelationGetNumberOfBlocks (TYPE_2__*) ;
 double get_rel_data_width (TYPE_2__*,double*) ;
 double rint (double) ;

void
table_block_relation_estimate_size(Relation rel, int32 *attr_widths,
           BlockNumber *pages, double *tuples,
           double *allvisfrac,
           Size overhead_bytes_per_tuple,
           Size usable_bytes_per_page)
{
 BlockNumber curpages;
 BlockNumber relpages;
 double reltuples;
 BlockNumber relallvisible;
 double density;


 curpages = RelationGetNumberOfBlocks(rel);


 relpages = (BlockNumber) rel->rd_rel->relpages;
 reltuples = (double) rel->rd_rel->reltuples;
 relallvisible = (BlockNumber) rel->rd_rel->relallvisible;
 if (curpages < 10 &&
  relpages == 0 &&
  !rel->rd_rel->relhassubclass)
  curpages = 10;


 *pages = curpages;

 if (curpages == 0)
 {
  *tuples = 0;
  *allvisfrac = 0;
  return;
 }


 if (relpages > 0)
  density = reltuples / (double) relpages;
 else
 {
  int32 tuple_width;

  tuple_width = get_rel_data_width(rel, attr_widths);
  tuple_width += overhead_bytes_per_tuple;

  density = usable_bytes_per_page / tuple_width;
 }
 *tuples = rint(density * (double) curpages);







 if (relallvisible == 0 || curpages <= 0)
  *allvisfrac = 0;
 else if ((double) relallvisible >= curpages)
  *allvisfrac = 1;
 else
  *allvisfrac = (double) relallvisible / curpages;
}
