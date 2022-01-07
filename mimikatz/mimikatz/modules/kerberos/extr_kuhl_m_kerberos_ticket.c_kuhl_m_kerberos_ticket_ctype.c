
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PCWCHAR ;
typedef int LONG ;
PCWCHAR kuhl_m_kerberos_ticket_ctype(LONG cType)
{
 PCWCHAR type;
 switch(cType)
 {
 case 132: type = L"none               "; break;
 case 148: type = L"crc32              "; break;
 case 136: type = L"md4                "; break;
 case 140: type = L"krb_des_mac        "; break;
 case 139: type = L"krb_des_mac_k      "; break;
 case 135: type = L"md5                "; break;
 case 134: type = L"md5_des            "; break;
 case 128: type = L"sha1_new           "; break;
 case 144: type = L"hmac_sha1_aes128   "; break;
 case 142: type = L"hmac_sha1_aes256   "; break;
 case 138: type = L"lm                 "; break;
 case 129: type = L"sha1               "; break;
 case 130: type = L"real_crc32         "; break;
 case 147: type = L"dec_mac            "; break;
 case 146: type = L"dec_mac_md5        "; break;
 case 137: type = L"md25               "; break;
 case 131: type = L"rc4_md5            "; break;
 case 133: type = L"md5_hmac           "; break;
 case 145: type = L"hmac_md5           "; break;
 case 143: type = L"hmac_sha1_aes128_ki"; break;
 case 141: type = L"hmac_sha1_aes256_ki"; break;
 default: type = L"unknow             "; break;
 }
 return type;
}
