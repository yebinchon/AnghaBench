
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double (* f_dist ) (void const*,int ,int *) ;scalar_t__ (* f_ge ) (void const*,int ,int *) ;scalar_t__ (* f_le ) (void const*,int ,int *) ;scalar_t__ t; } ;
typedef TYPE_1__ gbtree_ninfo ;
typedef double float8 ;
struct TYPE_6__ {int upper; int lower; } ;
typedef TYPE_2__ GBT_NUMKEY_R ;
typedef int FmgrInfo ;


 int ERROR ;
 int elog (int ,char*,int) ;
 scalar_t__ stub1 (void const*,int ,int *) ;
 double stub2 (void const*,int ,int *) ;
 scalar_t__ stub3 (void const*,int ,int *) ;
 double stub4 (void const*,int ,int *) ;

float8
gbt_num_distance(const GBT_NUMKEY_R *key,
     const void *query,
     bool is_leaf,
     const gbtree_ninfo *tinfo,
     FmgrInfo *flinfo)
{
 float8 retval;

 if (tinfo->f_dist == ((void*)0))
  elog(ERROR, "KNN search is not supported for btree_gist type %d",
    (int) tinfo->t);
 if (tinfo->f_le(query, key->lower, flinfo))
  retval = tinfo->f_dist(query, key->lower, flinfo);
 else if (tinfo->f_ge(query, key->upper, flinfo))
  retval = tinfo->f_dist(query, key->upper, flinfo);
 else
  retval = 0.0;

 return retval;
}
