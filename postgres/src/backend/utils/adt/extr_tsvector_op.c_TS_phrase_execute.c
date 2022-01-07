
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_12__ {int oper; int distance; int left; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_1__ qoperator; } ;
struct TYPE_13__ {int negate; int width; scalar_t__ npos; } ;
typedef int (* TSExecuteCallback ) (void*,int *,TYPE_2__*) ;
typedef int Rdata ;
typedef int QueryOperand ;
typedef TYPE_3__ QueryItem ;
typedef int Ldata ;
typedef TYPE_2__ ExecPhraseData ;


 int Assert (int) ;
 int ERROR ;
 int Max (int,int) ;
 scalar_t__ Min (scalar_t__,scalar_t__) ;




 scalar_t__ QI_VAL ;
 int TSPO_BOTH ;
 int TSPO_L_ONLY ;
 int TSPO_R_ONLY ;
 int TS_EXEC_PHRASE_NO_POS ;
 int TS_phrase_output (TYPE_2__*,TYPE_2__*,TYPE_2__*,int,int,int,scalar_t__) ;
 int check_stack_depth () ;
 int elog (int ,char*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static bool
TS_phrase_execute(QueryItem *curitem, void *arg, uint32 flags,
      TSExecuteCallback chkcond,
      ExecPhraseData *data)
{
 ExecPhraseData Ldata,
    Rdata;
 bool lmatch,
    rmatch;
 int Loffset,
    Roffset,
    maxwidth;


 check_stack_depth();

 if (curitem->type == QI_VAL)
  return chkcond(arg, (QueryOperand *) curitem, data);

 switch (curitem->qoperator.oper)
 {
  case 130:
   if (TS_phrase_execute(curitem + 1, arg, flags, chkcond, data))
   {
    if (data->npos > 0)
    {

     data->negate = !data->negate;
     return 1;
    }
    else if (data->negate)
    {

     data->negate = 0;
     return 0;
    }

    return 1;
   }
   else
   {

    Assert(data->npos == 0 && !data->negate);
    data->negate = 1;
    return 1;
   }

  case 128:
  case 131:
   memset(&Ldata, 0, sizeof(Ldata));
   memset(&Rdata, 0, sizeof(Rdata));

   if (!TS_phrase_execute(curitem + curitem->qoperator.left,
           arg, flags, chkcond, &Ldata))
    return 0;

   if (!TS_phrase_execute(curitem + 1,
           arg, flags, chkcond, &Rdata))
    return 0;







   if ((Ldata.npos == 0 && !Ldata.negate) ||
    (Rdata.npos == 0 && !Rdata.negate))
    return (flags & TS_EXEC_PHRASE_NO_POS) ? 1 : 0;

   if (curitem->qoperator.oper == 128)
   {




    Loffset = curitem->qoperator.distance + Rdata.width;
    Roffset = 0;
    if (data)
     data->width = curitem->qoperator.distance +
      Ldata.width + Rdata.width;
   }
   else
   {




    maxwidth = Max(Ldata.width, Rdata.width);
    Loffset = maxwidth - Ldata.width;
    Roffset = maxwidth - Rdata.width;
    if (data)
     data->width = maxwidth;
   }

   if (Ldata.negate && Rdata.negate)
   {

    (void) TS_phrase_output(data, &Ldata, &Rdata,
          TSPO_BOTH | TSPO_L_ONLY | TSPO_R_ONLY,
          Loffset, Roffset,
          Ldata.npos + Rdata.npos);
    if (data)
     data->negate = 1;
    return 1;
   }
   else if (Ldata.negate)
   {

    return TS_phrase_output(data, &Ldata, &Rdata,
          TSPO_R_ONLY,
          Loffset, Roffset,
          Rdata.npos);
   }
   else if (Rdata.negate)
   {

    return TS_phrase_output(data, &Ldata, &Rdata,
          TSPO_L_ONLY,
          Loffset, Roffset,
          Ldata.npos);
   }
   else
   {

    return TS_phrase_output(data, &Ldata, &Rdata,
          TSPO_BOTH,
          Loffset, Roffset,
          Min(Ldata.npos, Rdata.npos));
   }

  case 129:
   memset(&Ldata, 0, sizeof(Ldata));
   memset(&Rdata, 0, sizeof(Rdata));

   lmatch = TS_phrase_execute(curitem + curitem->qoperator.left,
            arg, flags, chkcond, &Ldata);
   rmatch = TS_phrase_execute(curitem + 1,
            arg, flags, chkcond, &Rdata);

   if (!lmatch && !rmatch)
    return 0;







   if ((lmatch && Ldata.npos == 0 && !Ldata.negate) ||
    (rmatch && Rdata.npos == 0 && !Rdata.negate))
    return (flags & TS_EXEC_PHRASE_NO_POS) ? 1 : 0;






   if (!lmatch)
    Ldata.width = 0;
   if (!rmatch)
    Rdata.width = 0;







   maxwidth = Max(Ldata.width, Rdata.width);
   Loffset = maxwidth - Ldata.width;
   Roffset = maxwidth - Rdata.width;
   data->width = maxwidth;

   if (Ldata.negate && Rdata.negate)
   {

    (void) TS_phrase_output(data, &Ldata, &Rdata,
          TSPO_BOTH,
          Loffset, Roffset,
          Min(Ldata.npos, Rdata.npos));
    data->negate = 1;
    return 1;
   }
   else if (Ldata.negate)
   {

    (void) TS_phrase_output(data, &Ldata, &Rdata,
          TSPO_L_ONLY,
          Loffset, Roffset,
          Ldata.npos);
    data->negate = 1;
    return 1;
   }
   else if (Rdata.negate)
   {

    (void) TS_phrase_output(data, &Ldata, &Rdata,
          TSPO_R_ONLY,
          Loffset, Roffset,
          Rdata.npos);
    data->negate = 1;
    return 1;
   }
   else
   {

    return TS_phrase_output(data, &Ldata, &Rdata,
          TSPO_BOTH | TSPO_L_ONLY | TSPO_R_ONLY,
          Loffset, Roffset,
          Ldata.npos + Rdata.npos);
   }

  default:
   elog(ERROR, "unrecognized operator: %d", curitem->qoperator.oper);
 }


 return 0;
}
