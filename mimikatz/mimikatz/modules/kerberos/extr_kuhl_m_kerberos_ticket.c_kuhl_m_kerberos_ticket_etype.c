
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PCWCHAR ;
typedef int LONG ;
PCWCHAR kuhl_m_kerberos_ticket_etype(LONG eType)
{
 PCWCHAR type;
 switch(eType)
 {
 case 140: type = L"null             "; break;
 case 141: type = L"des_plain        "; break;
 case 145: type = L"des_cbc_crc      "; break;
 case 144: type = L"des_cbc_md4      "; break;
 case 143: type = L"des_cbc_md5      "; break;
 case 142: type = L"des_cbc_md5_nt   "; break;
 case 133: type = L"rc4_plain        "; break;
 case 132: type = L"rc4_plain2       "; break;
 case 131: type = L"rc4_plain_exp    "; break;
 case 135: type = L"rc4_lm           "; break;
 case 134: type = L"rc4_md4          "; break;
 case 128: type = L"rc4_sha          "; break;
 case 139: type = L"rc4_hmac_nt      "; break;
 case 138: type = L"rc4_hmac_nt_exp  "; break;
 case 130: type = L"rc4_plain_old    "; break;
 case 129: type = L"rc4_plain_old_exp"; break;
 case 137: type = L"rc4_hmac_old     "; break;
 case 136: type = L"rc4_hmac_old_exp "; break;
 case 148: type = L"aes128_hmac_plain"; break;
 case 146: type = L"aes256_hmac_plain"; break;
 case 149: type = L"aes128_hmac      "; break;
 case 147: type = L"aes256_hmac      "; break;
 default: type = L"unknow           "; break;
 }
 return type;
}
