
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int int16_t ;
typedef scalar_t__ cp ;


 int DNS_MSGID ;
 int MAXCNAME ;
 int memcpy (int *,char*,int) ;
 int * put16 (int *,int) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int16_t dns_makequery(uint16_t op, char * name, uint8_t * buf, uint16_t len)
{
 uint8_t *cp;
 char *cp1;
 char sname[MAXCNAME];
 char *dname;
 uint16_t p;
 uint16_t dlen;

 cp = buf;

 DNS_MSGID++;
 cp = put16(cp, DNS_MSGID);
 p = (op << 11) | 0x0100;
 cp = put16(cp, p);
 cp = put16(cp, 1);
 cp = put16(cp, 0);
 cp = put16(cp, 0);
 cp = put16(cp, 0);

 strcpy(sname, name);
 dname = sname;
 dlen = strlen(dname);
 for (;;)
 {

  cp1 = strchr(dname, '.');

  if (cp1 != ((void*)0)) len = cp1 - dname;
  else len = dlen;

  *cp++ = len;
  if (len == 0) break;


  memcpy(cp, dname, len);
  cp += len;
  if (cp1 == ((void*)0))
  {
   *cp++ = 0;
   break;
  }
  dname += len+1;
  dlen -= len+1;
 }

 cp = put16(cp, 0x0001);
 cp = put16(cp, 0x0001);

 return ((int16_t)((uint32_t)(cp) - (uint32_t)(buf)));
}
