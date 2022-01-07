
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int isBuild; int myXid; } ;
typedef TYPE_1__ spgxlogState ;
struct TYPE_7__ {int deadTupleStorage; int isBuild; int myXid; } ;
typedef TYPE_2__ SpGistState ;


 int SGDTSIZE ;
 int memset (TYPE_2__*,int ,int) ;
 int palloc0 (int ) ;

__attribute__((used)) static void
fillFakeState(SpGistState *state, spgxlogState stateSrc)
{
 memset(state, 0, sizeof(*state));

 state->myXid = stateSrc.myXid;
 state->isBuild = stateSrc.isBuild;
 state->deadTupleStorage = palloc0(SGDTSIZE);
}
