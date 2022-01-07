
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_8__ {TYPE_1__* rd_rel; } ;
struct TYPE_7__ {int relkind; double relpages; double reltuples; int relallvisible; } ;
typedef TYPE_2__* Relation ;
typedef int ItemIdData ;
typedef double BlockNumber ;


 int BLCKSZ ;
 int MAXALIGN (int ) ;






 double RelationGetNumberOfBlocks (TYPE_2__*) ;
 int SizeOfPageHeaderData ;
 int SizeofHeapTupleHeader ;
 int get_rel_data_width (TYPE_2__*,int*) ;
 double rint (double) ;
 int table_relation_estimate_size (TYPE_2__*,int*,double*,double*,double*) ;

void
estimate_rel_size(Relation rel, int32 *attr_widths,
      BlockNumber *pages, double *tuples, double *allvisfrac)
{
 BlockNumber curpages;
 BlockNumber relpages;
 double reltuples;
 BlockNumber relallvisible;
 double density;

 switch (rel->rd_rel->relkind)
 {
  case 130:
  case 131:
  case 128:
   table_relation_estimate_size(rel, attr_widths, pages, tuples,
           allvisfrac);
   break;

  case 132:







   curpages = RelationGetNumberOfBlocks(rel);


   relpages = (BlockNumber) rel->rd_rel->relpages;
   reltuples = (double) rel->rd_rel->reltuples;
   relallvisible = (BlockNumber) rel->rd_rel->relallvisible;


   *pages = curpages;

   if (curpages == 0)
   {
    *tuples = 0;
    *allvisfrac = 0;
    break;
   }

   relpages = (BlockNumber) rel->rd_rel->relpages;
   reltuples = (double) rel->rd_rel->reltuples;
   relallvisible = (BlockNumber) rel->rd_rel->relallvisible;







   if (relpages > 0)
   {
    curpages--;
    relpages--;
   }


   if (relpages > 0)
    density = reltuples / (double) relpages;
   else
   {
    int32 tuple_width;

    tuple_width = get_rel_data_width(rel, attr_widths);
    tuple_width += MAXALIGN(SizeofHeapTupleHeader);
    tuple_width += sizeof(ItemIdData);

    density = (BLCKSZ - SizeOfPageHeaderData) / tuple_width;
   }
   *tuples = rint(density * (double) curpages);







   if (relallvisible == 0 || curpages <= 0)
    *allvisfrac = 0;
   else if ((double) relallvisible >= curpages)
    *allvisfrac = 1;
   else
    *allvisfrac = (double) relallvisible / curpages;
   break;

  case 129:

   *pages = 1;
   *tuples = 1;
   *allvisfrac = 0;
   break;
  case 133:

   *pages = rel->rd_rel->relpages;
   *tuples = rel->rd_rel->reltuples;
   *allvisfrac = 0;
   break;
  default:

   *pages = 0;
   *tuples = 0;
   *allvisfrac = 0;
   break;
 }
}
