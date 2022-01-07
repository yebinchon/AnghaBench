
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DNS_MSGID ;
 int DNS_MSG_ID ;
 int DNS_SOCKET ;
 int * pDNSMSG ;

void DNS_init(uint8_t s, uint8_t * buf)
{
 DNS_SOCKET = s;
 pDNSMSG = buf;
 DNS_MSGID = DNS_MSG_ID;
}
