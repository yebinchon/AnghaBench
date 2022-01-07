
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int * ht_array; scalar_t__ ht_used; } ;
struct TYPE_11__ {scalar_t__ ga_len; } ;
struct TYPE_12__ {TYPE_5__ sl_sounddone; int * sl_sbyts; TYPE_2__ sl_sal; } ;
typedef TYPE_3__ slang_T ;
struct TYPE_13__ {TYPE_3__* lp_slang; } ;
typedef TYPE_4__ langp_T ;
typedef int hashitem_T ;
struct TYPE_16__ {int ga_len; } ;
struct TYPE_15__ {TYPE_1__* w_s; } ;
struct TYPE_10__ {TYPE_9__ b_langp; } ;


 int HASHITEM_EMPTY (int *) ;
 int HI2SFT (int *) ;
 TYPE_4__* LANGP_ENTRY (TYPE_9__,int) ;
 TYPE_7__* curwin ;
 int hash_clear (TYPE_5__*) ;
 int hash_init (TYPE_5__*) ;
 int vim_free (int ) ;

__attribute__((used)) static void
suggest_try_soundalike_finish()
{
    langp_T *lp;
    int lpi;
    slang_T *slang;
    int todo;
    hashitem_T *hi;



    for (lpi = 0; lpi < curwin->w_s->b_langp.ga_len; ++lpi)
    {
 lp = LANGP_ENTRY(curwin->w_s->b_langp, lpi);
 slang = lp->lp_slang;
 if (slang->sl_sal.ga_len > 0 && slang->sl_sbyts != ((void*)0))
 {

     todo = (int)slang->sl_sounddone.ht_used;
     for (hi = slang->sl_sounddone.ht_array; todo > 0; ++hi)
  if (!HASHITEM_EMPTY(hi))
  {
      vim_free(HI2SFT(hi));
      --todo;
  }


     hash_clear(&slang->sl_sounddone);
     hash_init(&slang->sl_sounddone);
 }
    }
}
