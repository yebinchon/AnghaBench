
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pos; scalar_t__ npos; } ;
struct TYPE_5__ {scalar_t__ npos; scalar_t__ reverseinsert; int pos; int operandexists; } ;
typedef TYPE_1__ QueryRepresentationOperand ;
typedef int QueryRepresentation ;
typedef int QueryOperand ;
typedef TYPE_2__ ExecPhraseData ;


 scalar_t__ MAXQROPOS ;
 TYPE_1__* QR_GET_OPERAND_DATA (int *,int *) ;

__attribute__((used)) static bool
checkcondition_QueryOperand(void *checkval, QueryOperand *val, ExecPhraseData *data)
{
 QueryRepresentation *qr = (QueryRepresentation *) checkval;
 QueryRepresentationOperand *opData = QR_GET_OPERAND_DATA(qr, val);

 if (!opData->operandexists)
  return 0;

 if (data)
 {
  data->npos = opData->npos;
  data->pos = opData->pos;
  if (opData->reverseinsert)
   data->pos += MAXQROPOS - opData->npos;
 }

 return 1;
}
