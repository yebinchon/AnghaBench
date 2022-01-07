
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef char bytea ;
typedef int StringInfoData ;
typedef int Oid ;
typedef int Datum ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int FrontendProtocol ;
 char* OidOutputFunctionCall (int ,int ) ;
 char* OidSendFunctionCall (int ,int ) ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int VARDATA (char*) ;
 int VARHDRSZ ;
 int VARSIZE (char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int getTypeBinaryOutputInfo (int ,int *,int*) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 int pfree (char*) ;
 int pq_beginmessage (int *,char) ;
 int pq_endmessage (int *) ;
 int pq_sendbyte (int *,char) ;
 int pq_sendbytes (int *,int ,int) ;
 int pq_sendcountedtext (int *,char*,int ,int) ;
 int pq_sendint32 (int *,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
SendFunctionResult(Datum retval, bool isnull, Oid rettype, int16 format)
{
 bool newstyle = (PG_PROTOCOL_MAJOR(FrontendProtocol) >= 3);
 StringInfoData buf;

 pq_beginmessage(&buf, 'V');

 if (isnull)
 {
  if (newstyle)
   pq_sendint32(&buf, -1);
 }
 else
 {
  if (!newstyle)
   pq_sendbyte(&buf, 'G');

  if (format == 0)
  {
   Oid typoutput;
   bool typisvarlena;
   char *outputstr;

   getTypeOutputInfo(rettype, &typoutput, &typisvarlena);
   outputstr = OidOutputFunctionCall(typoutput, retval);
   pq_sendcountedtext(&buf, outputstr, strlen(outputstr), 0);
   pfree(outputstr);
  }
  else if (format == 1)
  {
   Oid typsend;
   bool typisvarlena;
   bytea *outputbytes;

   getTypeBinaryOutputInfo(rettype, &typsend, &typisvarlena);
   outputbytes = OidSendFunctionCall(typsend, retval);
   pq_sendint32(&buf, VARSIZE(outputbytes) - VARHDRSZ);
   pq_sendbytes(&buf, VARDATA(outputbytes),
       VARSIZE(outputbytes) - VARHDRSZ);
   pfree(outputbytes);
  }
  else
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("unsupported format code: %d", format)));
 }

 if (!newstyle)
  pq_sendbyte(&buf, '0');

 pq_endmessage(&buf);
}
