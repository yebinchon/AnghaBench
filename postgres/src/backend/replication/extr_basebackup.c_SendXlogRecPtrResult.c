
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int str ;
typedef int XLogRecPtr ;
typedef int TimeLineID ;
typedef int StringInfoData ;
typedef scalar_t__ Size ;


 scalar_t__ INT8OID ;
 int MAXFNAMELEN ;
 scalar_t__ TEXTOID ;
 int pq_beginmessage (int *,char) ;
 int pq_endmessage (int *) ;
 int pq_puttextmessage (char,char*) ;
 int pq_sendbytes (int *,char*,scalar_t__) ;
 int pq_sendint16 (int *,int) ;
 int pq_sendint32 (int *,scalar_t__) ;
 int pq_sendstring (int *,char*) ;
 scalar_t__ snprintf (char*,int,char*,int,...) ;

__attribute__((used)) static void
SendXlogRecPtrResult(XLogRecPtr ptr, TimeLineID tli)
{
 StringInfoData buf;
 char str[MAXFNAMELEN];
 Size len;

 pq_beginmessage(&buf, 'T');
 pq_sendint16(&buf, 2);


 pq_sendstring(&buf, "recptr");
 pq_sendint32(&buf, 0);
 pq_sendint16(&buf, 0);
 pq_sendint32(&buf, TEXTOID);
 pq_sendint16(&buf, -1);
 pq_sendint32(&buf, 0);
 pq_sendint16(&buf, 0);

 pq_sendstring(&buf, "tli");
 pq_sendint32(&buf, 0);
 pq_sendint16(&buf, 0);





 pq_sendint32(&buf, INT8OID);
 pq_sendint16(&buf, -1);
 pq_sendint32(&buf, 0);
 pq_sendint16(&buf, 0);
 pq_endmessage(&buf);


 pq_beginmessage(&buf, 'D');
 pq_sendint16(&buf, 2);

 len = snprintf(str, sizeof(str),
       "%X/%X", (uint32) (ptr >> 32), (uint32) ptr);
 pq_sendint32(&buf, len);
 pq_sendbytes(&buf, str, len);

 len = snprintf(str, sizeof(str), "%u", tli);
 pq_sendint32(&buf, len);
 pq_sendbytes(&buf, str, len);

 pq_endmessage(&buf);


 pq_puttextmessage('C', "SELECT");
}
