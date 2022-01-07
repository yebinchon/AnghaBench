
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cursor; int len; } ;
struct TYPE_6__ {int copy_dest; int reached_eof; int (* data_source_cb ) (void*,int,int) ;TYPE_2__* fe_msgbuf; int copy_file; } ;
typedef TYPE_1__* CopyState ;






 int EOF ;
 int ERRCODE_CONNECTION_FAILURE ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERRCODE_QUERY_CANCELED ;
 int ERROR ;
 int HOLD_CANCEL_INTERRUPTS () ;
 int RESUME_CANCEL_INTERRUPTS () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,...) ;
 int ferror (int ) ;
 int fread (void*,int,int,int ) ;
 int pq_copymsgbytes (TYPE_2__*,void*,int) ;
 int pq_getbyte () ;
 int pq_getbytes (char*,int) ;
 int pq_getmessage (TYPE_2__*,int ) ;
 int pq_getmsgstring (TYPE_2__*) ;
 int pq_startmsgread () ;
 int stub1 (void*,int,int) ;

__attribute__((used)) static int
CopyGetData(CopyState cstate, void *databuf, int minread, int maxread)
{
 int bytesread = 0;

 switch (cstate->copy_dest)
 {
  case 130:
   bytesread = fread(databuf, 1, maxread, cstate->copy_file);
   if (ferror(cstate->copy_file))
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not read from COPY file: %m")));
   if (bytesread == 0)
    cstate->reached_eof = 1;
   break;
  case 128:
   if (pq_getbytes((char *) databuf, minread))
   {

    ereport(ERROR,
      (errcode(ERRCODE_CONNECTION_FAILURE),
       errmsg("unexpected EOF on client connection with an open transaction")));
   }
   bytesread = minread;
   break;
  case 129:
   while (maxread > 0 && bytesread < minread && !cstate->reached_eof)
   {
    int avail;

    while (cstate->fe_msgbuf->cursor >= cstate->fe_msgbuf->len)
    {

     int mtype;

   readmessage:
     HOLD_CANCEL_INTERRUPTS();
     pq_startmsgread();
     mtype = pq_getbyte();
     if (mtype == EOF)
      ereport(ERROR,
        (errcode(ERRCODE_CONNECTION_FAILURE),
         errmsg("unexpected EOF on client connection with an open transaction")));
     if (pq_getmessage(cstate->fe_msgbuf, 0))
      ereport(ERROR,
        (errcode(ERRCODE_CONNECTION_FAILURE),
         errmsg("unexpected EOF on client connection with an open transaction")));
     RESUME_CANCEL_INTERRUPTS();
     switch (mtype)
     {
      case 'd':
       break;
      case 'c':

       cstate->reached_eof = 1;
       return bytesread;
      case 'f':
       ereport(ERROR,
         (errcode(ERRCODE_QUERY_CANCELED),
          errmsg("COPY from stdin failed: %s",
           pq_getmsgstring(cstate->fe_msgbuf))));
       break;
      case 'H':
      case 'S':







       goto readmessage;
      default:
       ereport(ERROR,
         (errcode(ERRCODE_PROTOCOL_VIOLATION),
          errmsg("unexpected message type 0x%02X during COPY from stdin",
           mtype)));
       break;
     }
    }
    avail = cstate->fe_msgbuf->len - cstate->fe_msgbuf->cursor;
    if (avail > maxread)
     avail = maxread;
    pq_copymsgbytes(cstate->fe_msgbuf, databuf, avail);
    databuf = (void *) ((char *) databuf + avail);
    maxread -= avail;
    bytesread += avail;
   }
   break;
  case 131:
   bytesread = cstate->data_source_cb(databuf, minread, maxread);
   break;
 }

 return bytesread;
}
