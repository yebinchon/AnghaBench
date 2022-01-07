
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct dhdr {int qr; int opcode; int aa; int tc; int rd; int ra; int rcode; int qdcount; int ancount; int nscount; int arcount; void* id; } ;
typedef int int8_t ;


 int * dns_answer (int *,int *,int *) ;
 int * dns_question (int *,int *) ;
 void* get16 (int *) ;
 int memset (struct dhdr*,int ,int) ;
 int printf (char*) ;

int8_t parseDNSMSG(struct dhdr * pdhdr, uint8_t * pbuf, uint8_t * ip_from_dns)
{
 uint16_t tmp;
 uint16_t i;
 uint8_t * msg;
 uint8_t * cp;

 msg = pbuf;
 memset(pdhdr, 0, sizeof(*pdhdr));

 pdhdr->id = get16(&msg[0]);
 tmp = get16(&msg[2]);
 if (tmp & 0x8000) pdhdr->qr = 1;

 pdhdr->opcode = (tmp >> 11) & 0xf;

 if (tmp & 0x0400) pdhdr->aa = 1;
 if (tmp & 0x0200) pdhdr->tc = 1;
 if (tmp & 0x0100) pdhdr->rd = 1;
 if (tmp & 0x0080) pdhdr->ra = 1;

 pdhdr->rcode = tmp & 0xf;
 pdhdr->qdcount = get16(&msg[4]);
 pdhdr->ancount = get16(&msg[6]);
 pdhdr->nscount = get16(&msg[8]);
 pdhdr->arcount = get16(&msg[10]);



 cp = &msg[12];


 for (i = 0; i < pdhdr->qdcount; i++)
 {
  cp = dns_question(msg, cp);
  if(!cp)
  {



   return -1;
  }
 }


 for (i = 0; i < pdhdr->ancount; i++)
 {
  cp = dns_answer(msg, cp, ip_from_dns);
  if(!cp)
  {



   return -1;
  }

 }


 for (i = 0; i < pdhdr->nscount; i++)
 {
  ;
 }


 for (i = 0; i < pdhdr->arcount; i++)
 {
  ;
 }

 if(pdhdr->rcode == 0) return 1;
 else return 0;
}
