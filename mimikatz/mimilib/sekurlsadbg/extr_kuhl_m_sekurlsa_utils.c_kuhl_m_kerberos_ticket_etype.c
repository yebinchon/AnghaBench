
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PCSTR ;
typedef int LONG ;
PCSTR kuhl_m_kerberos_ticket_etype(LONG eType)
{
 PCSTR type;
 switch(eType)
 {
 case 140: type = "null             "; break;

 case 141: type = "des_plain        "; break;
 case 145: type = "des_cbc_crc      "; break;
 case 144: type = "des_cbc_md4      "; break;
 case 143: type = "des_cbc_md5      "; break;
 case 142: type = "des_cbc_md5_nt   "; break;

 case 133: type = "rc4_plain        "; break;
 case 132: type = "rc4_plain2       "; break;
 case 131: type = "rc4_plain_exp    "; break;
 case 135: type = "rc4_lm           "; break;
 case 134: type = "rc4_md4          "; break;
 case 128: type = "rc4_sha          "; break;
 case 139: type = "rc4_hmac_nt      "; break;
 case 138: type = "rc4_hmac_nt_exp  "; break;
 case 130: type = "rc4_plain_old    "; break;
 case 129: type = "rc4_plain_old_exp"; break;
 case 137: type = "rc4_hmac_old     "; break;
 case 136: type = "rc4_hmac_old_exp "; break;

 case 148: type = "aes128_hmac_plain"; break;
 case 146: type = "aes256_hmac_plain"; break;
 case 149: type = "aes128_hmac      "; break;
 case 147: type = "aes256_hmac      "; break;

 default: type = "unknow           "; break;
 }
 return type;
}
