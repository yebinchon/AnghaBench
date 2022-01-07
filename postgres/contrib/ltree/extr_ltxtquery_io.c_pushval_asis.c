
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16 ;
typedef int int32 ;
struct TYPE_4__ {char* curop; char* op; int lenop; int sumlen; } ;
typedef TYPE_1__ QPRS_STATE ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int ltree_crc32_sz (char*,int) ;
 int memcpy (void*,void*,int) ;
 int pushquery (TYPE_1__*,int,int ,int,int,int ) ;
 scalar_t__ repalloc (void*,int) ;

__attribute__((used)) static void
pushval_asis(QPRS_STATE *state, int type, char *strval, int lenval, uint16 flag)
{
 if (lenval > 0xffff)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("word is too long")));

 pushquery(state, type, ltree_crc32_sz(strval, lenval),
     state->curop - state->op, lenval, flag);

 while (state->curop - state->op + lenval + 1 >= state->lenop)
 {
  int32 tmp = state->curop - state->op;

  state->lenop *= 2;
  state->op = (char *) repalloc((void *) state->op, state->lenop);
  state->curop = state->op + tmp;
 }
 memcpy((void *) state->curop, (void *) strval, lenval);
 state->curop += lenval;
 *(state->curop) = '\0';
 state->curop++;
 state->sumlen += lenval + 1;
 return;
}
