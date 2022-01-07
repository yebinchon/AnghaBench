
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ linenr_T ;
struct TYPE_8__ {scalar_t__ bh_data; } ;
typedef TYPE_2__ bhdr_T ;
struct TYPE_7__ {scalar_t__ ml_line_count; scalar_t__ ml_locked_low; scalar_t__ ml_locked_high; int ml_flags; int * ml_mfp; } ;
struct TYPE_10__ {TYPE_1__ b_ml; } ;
struct TYPE_9__ {int* db_index; } ;
typedef TYPE_3__ DATA_BL ;


 int DB_INDEX_MASK ;
 int DB_MARKED ;
 int ML_FIND ;
 int ML_LOCKED_DIRTY ;
 TYPE_5__* curbuf ;
 scalar_t__ lowest_marked ;
 TYPE_2__* ml_find_line (TYPE_5__*,scalar_t__,int ) ;

void
ml_clearmarked()
{
    bhdr_T *hp;
    DATA_BL *dp;
    linenr_T lnum;
    int i;

    if (curbuf->b_ml.ml_mfp == ((void*)0))
 return;




    for (lnum = lowest_marked; lnum <= curbuf->b_ml.ml_line_count; )
    {





 if ((hp = ml_find_line(curbuf, lnum, ML_FIND)) == ((void*)0))
     return;

 dp = (DATA_BL *)(hp->bh_data);

 for (i = lnum - curbuf->b_ml.ml_locked_low;
       lnum <= curbuf->b_ml.ml_locked_high; ++i, ++lnum)
     if ((dp->db_index[i]) & DB_MARKED)
     {
  (dp->db_index[i]) &= DB_INDEX_MASK;
  curbuf->b_ml.ml_flags |= ML_LOCKED_DIRTY;
     }
    }

    lowest_marked = 0;
    return;
}
