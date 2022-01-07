
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QueryOperand ;
typedef int GinChkVal ;
typedef int ExecPhraseData ;


 scalar_t__ GIN_FALSE ;
 scalar_t__ checkcondition_gin_internal (int *,int *,int *) ;

__attribute__((used)) static bool
checkcondition_gin(void *checkval, QueryOperand *val, ExecPhraseData *data)
{
 return checkcondition_gin_internal((GinChkVal *) checkval,
            val,
            data) != GIN_FALSE;
}
