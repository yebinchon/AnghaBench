
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rd_rel; } ;
struct TYPE_4__ {double relpages; double reltuples; } ;
typedef TYPE_2__* Relation ;
typedef double BlockNumber ;


 double floor (double) ;

double
vac_estimate_reltuples(Relation relation,
        BlockNumber total_pages,
        BlockNumber scanned_pages,
        double scanned_tuples)
{
 BlockNumber old_rel_pages = relation->rd_rel->relpages;
 double old_rel_tuples = relation->rd_rel->reltuples;
 double old_density;
 double unscanned_pages;
 double total_tuples;


 if (scanned_pages >= total_pages)
  return scanned_tuples;







 if (scanned_pages == 0)
  return old_rel_tuples;





 if (old_rel_pages == 0)
  return floor((scanned_tuples / scanned_pages) * total_pages + 0.5);







 old_density = old_rel_tuples / old_rel_pages;
 unscanned_pages = (double) total_pages - (double) scanned_pages;
 total_tuples = old_density * unscanned_pages + scanned_tuples;
 return floor(total_tuples + 0.5);
}
