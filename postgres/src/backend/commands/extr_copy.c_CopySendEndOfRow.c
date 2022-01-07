
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int copy_dest; int binary; int is_program; int copy_file; TYPE_1__* fe_msgbuf; } ;
struct TYPE_8__ {int len; int data; } ;
typedef TYPE_1__* StringInfo ;
typedef TYPE_2__* CopyState ;


 int Assert (int) ;




 int ClosePipeToProgram (TYPE_2__*) ;
 int CopySendChar (TYPE_2__*,char) ;
 int CopySendString (TYPE_2__*,char*) ;
 int EPIPE ;
 int ERRCODE_CONNECTION_FAILURE ;
 int ERROR ;
 int FATAL ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;
 int errno ;
 int ferror (int ) ;
 int fwrite (int ,int ,int,int ) ;
 int pq_putbytes (int ,int ) ;
 int pq_putmessage (char,int ,int ) ;
 int resetStringInfo (TYPE_1__*) ;

__attribute__((used)) static void
CopySendEndOfRow(CopyState cstate)
{
 StringInfo fe_msgbuf = cstate->fe_msgbuf;

 switch (cstate->copy_dest)
 {
  case 130:
   if (!cstate->binary)
   {


    CopySendChar(cstate, '\n');



   }

   if (fwrite(fe_msgbuf->data, fe_msgbuf->len, 1,
        cstate->copy_file) != 1 ||
    ferror(cstate->copy_file))
   {
    if (cstate->is_program)
    {
     if (errno == EPIPE)
     {






      ClosePipeToProgram(cstate);






      errno = EPIPE;
     }
     ereport(ERROR,
       (errcode_for_file_access(),
        errmsg("could not write to COPY program: %m")));
    }
    else
     ereport(ERROR,
       (errcode_for_file_access(),
        errmsg("could not write to COPY file: %m")));
   }
   break;
  case 128:

   if (!cstate->binary)
    CopySendChar(cstate, '\n');

   if (pq_putbytes(fe_msgbuf->data, fe_msgbuf->len))
   {

    ereport(FATAL,
      (errcode(ERRCODE_CONNECTION_FAILURE),
       errmsg("connection lost during COPY to stdout")));
   }
   break;
  case 129:

   if (!cstate->binary)
    CopySendChar(cstate, '\n');


   (void) pq_putmessage('d', fe_msgbuf->data, fe_msgbuf->len);
   break;
  case 131:
   Assert(0);
   break;
 }

 resetStringInfo(fe_msgbuf);
}
