
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int StringInfoData ;
typedef int Port ;
typedef scalar_t__ AuthRequest ;


 scalar_t__ AUTH_REQ_OK ;
 scalar_t__ AUTH_REQ_SASL_FIN ;
 int CHECK_FOR_INTERRUPTS () ;
 int pq_beginmessage (int *,char) ;
 int pq_endmessage (int *) ;
 int pq_flush () ;
 int pq_sendbytes (int *,char const*,int) ;
 int pq_sendint32 (int *,int ) ;

__attribute__((used)) static void
sendAuthRequest(Port *port, AuthRequest areq, const char *extradata, int extralen)
{
 StringInfoData buf;

 CHECK_FOR_INTERRUPTS();

 pq_beginmessage(&buf, 'R');
 pq_sendint32(&buf, (int32) areq);
 if (extralen > 0)
  pq_sendbytes(&buf, extradata, extralen);

 pq_endmessage(&buf);






 if (areq != AUTH_REQ_OK && areq != AUTH_REQ_SASL_FIN)
  pq_flush();

 CHECK_FOR_INTERRUPTS();
}
