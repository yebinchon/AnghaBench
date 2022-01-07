
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int len ;
struct TYPE_3__ {int tapeset; } ;
typedef TYPE_1__ Tuplesortstate ;


 int LogicalTapeWrite (int ,int,void*,int) ;

__attribute__((used)) static void
markrunend(Tuplesortstate *state, int tapenum)
{
 unsigned int len = 0;

 LogicalTapeWrite(state->tapeset, tapenum, (void *) &len, sizeof(len));
}
