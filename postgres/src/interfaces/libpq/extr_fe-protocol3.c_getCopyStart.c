
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ int16 ;
struct TYPE_14__ {TYPE_1__* result; int copy_is_binary; } ;
struct TYPE_13__ {int format; } ;
struct TYPE_12__ {int numAttributes; TYPE_2__* attDescs; int binary; } ;
typedef TYPE_1__ PGresult ;
typedef TYPE_2__ PGresAttDesc ;
typedef TYPE_3__ PGconn ;
typedef int ExecStatusType ;


 int EOF ;
 int MemSet (TYPE_2__*,int ,int) ;
 int PQclear (TYPE_1__*) ;
 TYPE_1__* PQmakeEmptyPGresult (TYPE_3__*,int ) ;
 scalar_t__ pqGetInt (int*,int,TYPE_3__*) ;
 scalar_t__ pqGetc (int *,TYPE_3__*) ;
 scalar_t__ pqResultAlloc (TYPE_1__*,int,int) ;

__attribute__((used)) static int
getCopyStart(PGconn *conn, ExecStatusType copytype)
{
 PGresult *result;
 int nfields;
 int i;

 result = PQmakeEmptyPGresult(conn, copytype);
 if (!result)
  goto failure;

 if (pqGetc(&conn->copy_is_binary, conn))
  goto failure;
 result->binary = conn->copy_is_binary;

 if (pqGetInt(&(result->numAttributes), 2, conn))
  goto failure;
 nfields = result->numAttributes;


 if (nfields > 0)
 {
  result->attDescs = (PGresAttDesc *)
   pqResultAlloc(result, nfields * sizeof(PGresAttDesc), 1);
  if (!result->attDescs)
   goto failure;
  MemSet(result->attDescs, 0, nfields * sizeof(PGresAttDesc));
 }

 for (i = 0; i < nfields; i++)
 {
  int format;

  if (pqGetInt(&format, 2, conn))
   goto failure;





  format = (int) ((int16) format);
  result->attDescs[i].format = format;
 }


 conn->result = result;
 return 0;

failure:
 PQclear(result);
 return EOF;
}
