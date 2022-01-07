
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int * STREAM ;


 int ISO_PDU_DT ;
 int error (char*,int) ;
 int * iso_recv_msg (int*,int*) ;

STREAM
iso_recv(uint8 * rdpver)
{
 STREAM s;
 uint8 code = 0;

 s = iso_recv_msg(&code, rdpver);
 if (s == ((void*)0))
  return ((void*)0);
 if (rdpver != ((void*)0))
  if (*rdpver != 3)
   return s;
 if (code != ISO_PDU_DT)
 {
  error("expected DT, got 0x%x\n", code);
  return ((void*)0);
 }
 return s;
}
