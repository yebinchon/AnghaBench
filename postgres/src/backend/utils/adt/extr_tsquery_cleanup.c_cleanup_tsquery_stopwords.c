
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_10__ {scalar_t__ type; int distance; int length; } ;
struct TYPE_9__ {scalar_t__ size; } ;
typedef TYPE_1__* TSQuery ;
typedef TYPE_2__ QueryOperand ;
typedef char QueryItem ;
typedef int NODE ;


 int COMPUTESIZE (int,int) ;
 char* GETOPERAND (TYPE_1__*) ;
 char* GETQUERY (TYPE_1__*) ;
 int HDRSIZETQ ;
 int NOTICE ;
 scalar_t__ QI_VAL ;
 int SET_VARSIZE (TYPE_1__*,int) ;
 int calcstrlen (int *) ;
 int * clean_stopword_intree (int ,int*,int*) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int maketree (char*) ;
 int memcpy (char*,char*,int) ;
 TYPE_1__* palloc (int) ;
 char* plaintree (int *,int*) ;

TSQuery
cleanup_tsquery_stopwords(TSQuery in)
{
 int32 len,
    lenstr,
    commonlen,
    i;
 NODE *root;
 int ladd,
    radd;
 TSQuery out;
 QueryItem *items;
 char *operands;

 if (in->size == 0)
  return in;


 root = clean_stopword_intree(maketree(GETQUERY(in)), &ladd, &radd);
 if (root == ((void*)0))
 {
  ereport(NOTICE,
    (errmsg("text-search query contains only stop words or doesn't contain lexemes, ignored")));
  out = palloc(HDRSIZETQ);
  out->size = 0;
  SET_VARSIZE(out, HDRSIZETQ);
  return out;
 }





 lenstr = calcstrlen(root);
 items = plaintree(root, &len);
 commonlen = COMPUTESIZE(len, lenstr);

 out = palloc(commonlen);
 SET_VARSIZE(out, commonlen);
 out->size = len;

 memcpy(GETQUERY(out), items, len * sizeof(QueryItem));

 items = GETQUERY(out);
 operands = GETOPERAND(out);
 for (i = 0; i < out->size; i++)
 {
  QueryOperand *op = (QueryOperand *) &items[i];

  if (op->type != QI_VAL)
   continue;

  memcpy(operands, GETOPERAND(in) + op->distance, op->length);
  operands[op->length] = '\0';
  op->distance = operands - GETOPERAND(out);
  operands += op->length + 1;
 }

 return out;
}
