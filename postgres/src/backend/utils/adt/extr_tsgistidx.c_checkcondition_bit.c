
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valcrc; scalar_t__ prefix; } ;
typedef TYPE_1__ QueryOperand ;
typedef int ExecPhraseData ;


 int GETBIT (void*,int ) ;
 int HASHVAL (int ) ;

__attribute__((used)) static bool
checkcondition_bit(void *checkval, QueryOperand *val, ExecPhraseData *data)
{



 if (val->prefix)
  return 1;
 return GETBIT(checkval, HASHVAL(val->valcrc));
}
