
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {TYPE_2__* result; int asyncStatus; TYPE_2__* next_result; scalar_t__ singleRowMode; TYPE_4__* rowBuf; } ;
struct TYPE_16__ {int len; int value; } ;
struct TYPE_15__ {int len; char* value; } ;
struct TYPE_14__ {int numAttributes; char* null_field; int resultStatus; TYPE_1__* attDescs; } ;
struct TYPE_13__ {scalar_t__ format; } ;
typedef TYPE_2__ PGresult ;
typedef TYPE_3__ PGresAttValue ;
typedef TYPE_4__ PGdataValue ;
typedef TYPE_5__ PGconn ;


 int NULL_LEN ;
 int PGASYNC_READY ;
 int PGRES_SINGLE_TUPLE ;
 int PG_COPYRES_ATTRS ;
 int PG_COPYRES_EVENTS ;
 int PG_COPYRES_NOTICEHOOKS ;
 int PQclear (TYPE_2__*) ;
 TYPE_2__* PQcopyResult (TYPE_2__*,int) ;
 int memcpy (char*,int ,int) ;
 int pqAddTuple (TYPE_2__*,TYPE_3__*,char const**) ;
 scalar_t__ pqResultAlloc (TYPE_2__*,int,int) ;

int
pqRowProcessor(PGconn *conn, const char **errmsgp)
{
 PGresult *res = conn->result;
 int nfields = res->numAttributes;
 const PGdataValue *columns = conn->rowBuf;
 PGresAttValue *tup;
 int i;






 if (conn->singleRowMode)
 {

  res = PQcopyResult(res,
         PG_COPYRES_ATTRS | PG_COPYRES_EVENTS |
         PG_COPYRES_NOTICEHOOKS);
  if (!res)
   return 0;
 }
 tup = (PGresAttValue *)
  pqResultAlloc(res, nfields * sizeof(PGresAttValue), 1);
 if (tup == ((void*)0))
  goto fail;

 for (i = 0; i < nfields; i++)
 {
  int clen = columns[i].len;

  if (clen < 0)
  {

   tup[i].len = NULL_LEN;
   tup[i].value = res->null_field;
  }
  else
  {
   bool isbinary = (res->attDescs[i].format != 0);
   char *val;

   val = (char *) pqResultAlloc(res, clen + 1, isbinary);
   if (val == ((void*)0))
    goto fail;


   memcpy(val, columns[i].value, clen);
   val[clen] = '\0';

   tup[i].len = clen;
   tup[i].value = val;
  }
 }


 if (!pqAddTuple(res, tup, errmsgp))
  goto fail;





 if (conn->singleRowMode)
 {

  res->resultStatus = PGRES_SINGLE_TUPLE;

  conn->next_result = conn->result;
  conn->result = res;

  conn->asyncStatus = PGASYNC_READY;
 }

 return 1;

fail:

 if (res != conn->result)
  PQclear(res);
 return 0;
}
