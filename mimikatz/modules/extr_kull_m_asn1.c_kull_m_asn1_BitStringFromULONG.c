
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int flagBuffer ;
typedef int ULONG ;
typedef int * PDWORD ;
typedef int BerElement ;
typedef int BYTE ;


 int _byteswap_ulong (int ) ;
 int ber_printf (int *,char*,int *,int) ;

void kull_m_asn1_BitStringFromULONG(BerElement * pBer, ULONG data)
{
 BYTE flagBuffer[5] = {0};
 *(PDWORD) (flagBuffer + 1) = _byteswap_ulong(data);
 ber_printf(pBer, "X", flagBuffer, sizeof(flagBuffer));
}
