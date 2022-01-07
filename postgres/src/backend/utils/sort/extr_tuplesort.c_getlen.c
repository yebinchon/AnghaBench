
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int len ;
struct TYPE_3__ {int tapeset; } ;
typedef TYPE_1__ Tuplesortstate ;


 int ERROR ;
 int LogicalTapeRead (int ,int,unsigned int*,int) ;
 int elog (int ,char*) ;

__attribute__((used)) static unsigned int
getlen(Tuplesortstate *state, int tapenum, bool eofOK)
{
 unsigned int len;

 if (LogicalTapeRead(state->tapeset, tapenum,
      &len, sizeof(len)) != sizeof(len))
  elog(ERROR, "unexpected end of tape");
 if (len == 0 && !eofOK)
  elog(ERROR, "unexpected end of data");
 return len;
}
