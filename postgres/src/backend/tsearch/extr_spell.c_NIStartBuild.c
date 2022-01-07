
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buildCxt; } ;
typedef TYPE_1__ IspellDict ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CurTransactionContext ;

void
NIStartBuild(IspellDict *Conf)
{




 Conf->buildCxt = AllocSetContextCreate(CurTransactionContext,
             "Ispell dictionary init context",
             ALLOCSET_DEFAULT_SIZES);
}
