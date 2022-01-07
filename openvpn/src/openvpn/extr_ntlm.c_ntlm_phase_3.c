
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int username ;
typedef int userdomain ;
typedef int uint8_t ;
struct TYPE_2__ {char* username; char* password; } ;
struct http_proxy_info {scalar_t__ auth_method; TYPE_1__ up; } ;
struct gc_arena {int dummy; } ;
typedef int phase3 ;
typedef int domain ;
typedef int buf2 ;


 int ASSERT (int) ;
 int CLEAR (int*) ;
 int DES_KEY_LENGTH ;
 scalar_t__ HTTP_AUTH_NTLM2 ;
 int MD4_DIGEST_LENGTH ;
 int MD5_DIGEST_LENGTH ;
 int M_INFO ;
 int add_security_buffer (int,...) ;
 int cipher_des_encrypt_ecb (unsigned char*,int*,int*) ;
 int create_des_keys (int*,unsigned char*) ;
 int gen_hmac_md5 (int*,int,int*,int,int*) ;
 int gen_md4_hash (int*,int,int*) ;
 int gen_nonce (int*) ;
 int gen_timestamp (int*) ;
 scalar_t__ make_base64_string2 (unsigned char*,int,struct gc_arena*) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int msg (int ,char*) ;
 int my_strupr (char*) ;
 int openvpn_base64_decode (char const*,int*,int) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,size_t) ;
 int unicodize (char*,char*) ;

const char *
ntlm_phase_3(const struct http_proxy_info *p, const char *phase_2,
             struct gc_arena *gc)
{






    char pwbuf[sizeof(p->up.password) * 2];
    uint8_t buf2[128];
    uint8_t phase3[464];

    uint8_t md4_hash[MD4_DIGEST_LENGTH + 5];
    uint8_t challenge[8], ntlm_response[24];
    int i, ret_val;

    uint8_t ntlmv2_response[144];
    char userdomain_u[256];
    char userdomain[128];
    uint8_t ntlmv2_hash[MD5_DIGEST_LENGTH];
    uint8_t ntlmv2_hmacmd5[16];
    uint8_t *ntlmv2_blob = ntlmv2_response + 16;
    int ntlmv2_blob_size = 0;
    int phase3_bufpos = 0x40;
    size_t len;

    char domain[128];
    char username[128];
    char *separator;

    bool ntlmv2_enabled = (p->auth_method == HTTP_AUTH_NTLM2);

    CLEAR(buf2);

    ASSERT(strlen(p->up.username) > 0);
    ASSERT(strlen(p->up.password) > 0);


    separator = strchr(p->up.username, '\\');
    if (separator == ((void*)0))
    {
        strncpy(username, p->up.username, sizeof(username)-1);
        username[sizeof(username)-1] = 0;
        domain[0] = 0;
    }
    else
    {
        strncpy(username, separator+1, sizeof(username)-1);
        username[sizeof(username)-1] = 0;
        len = separator - p->up.username;
        if (len > sizeof(domain) - 1)
        {
            len = sizeof(domain) - 1;
        }
        strncpy(domain, p->up.username, len);
        domain[len] = 0;
    }



    int unicode_len = unicodize(pwbuf, p->up.password) - 2;
    gen_md4_hash((uint8_t *)pwbuf, unicode_len, md4_hash);


    memset(md4_hash + MD4_DIGEST_LENGTH, 0, 5);

    ret_val = openvpn_base64_decode(phase_2, buf2, -1);
    if (ret_val < 0)
    {
        return ((void*)0);
    }





    for (i = 0; i<8; i++)
    {
        challenge[i] = buf2[i+24];
    }

    if (ntlmv2_enabled)
    {
        int tib_len;


        strcpy(userdomain, username);
        my_strupr(userdomain);
        if (strlen(username) + strlen(domain) < sizeof(userdomain))
        {
            strcat(userdomain, domain);
        }
        else
        {
            msg(M_INFO, "Warning: Username or domain too long");
        }
        unicodize(userdomain_u, userdomain);
        gen_hmac_md5((uint8_t *)userdomain_u, 2 * strlen(userdomain), md4_hash,
                     MD5_DIGEST_LENGTH, ntlmv2_hash);


        memset(ntlmv2_blob, 0, 128);
        ntlmv2_blob[0x00] = 1;
        ntlmv2_blob[0x01] = 1;
        ntlmv2_blob[0x04] = 0;
        gen_timestamp(&ntlmv2_blob[0x08]);
        gen_nonce(&ntlmv2_blob[0x10]);
        ntlmv2_blob[0x18] = 0;
        const size_t hoff = 0x14;
        unsigned long flags = buf2[hoff] | (buf2[hoff + 1] << 8)
                              |(buf2[hoff + 2] << 16) | (buf2[hoff + 3] << 24);
        if ((flags & 0x00800000) == 0x00800000)
        {
            tib_len = buf2[0x28];
            if (tib_len > 96)
            {
                tib_len = 96;
            }

            {
                uint8_t *tib_ptr;
                uint8_t tib_pos = buf2[0x2c];
                if (tib_pos + tib_len > sizeof(buf2))
                {
                    return ((void*)0);
                }

                tib_ptr = buf2 + tib_pos;

                memcpy(&ntlmv2_blob[0x1c], tib_ptr, tib_len);
            }
        }
        else
        {
            tib_len = 0;
        }


        ntlmv2_blob[0x1c + tib_len] = 0;


        ntlmv2_blob_size = 0x20 + tib_len;


        memcpy(&ntlmv2_response[8], challenge, 8);


        gen_hmac_md5(&ntlmv2_response[8], ntlmv2_blob_size + 8, ntlmv2_hash,
                     MD5_DIGEST_LENGTH, ntlmv2_hmacmd5);




        memcpy(ntlmv2_response, ntlmv2_hmacmd5, MD5_DIGEST_LENGTH);
    }
    else
    {
        unsigned char key1[DES_KEY_LENGTH], key2[DES_KEY_LENGTH];
        unsigned char key3[DES_KEY_LENGTH];

        create_des_keys(md4_hash, key1);
        cipher_des_encrypt_ecb(key1, challenge, ntlm_response);

        create_des_keys(&md4_hash[DES_KEY_LENGTH - 1], key2);
        cipher_des_encrypt_ecb(key2, challenge, &ntlm_response[DES_KEY_LENGTH]);

        create_des_keys(&md4_hash[2 * (DES_KEY_LENGTH - 1)], key3);
        cipher_des_encrypt_ecb(key3, challenge,
                               &ntlm_response[DES_KEY_LENGTH * 2]);
    }


    memset(phase3, 0, sizeof(phase3));

    strcpy((char *)phase3, "NTLMSSP\0");
    phase3[8] = 3;

    if (ntlmv2_enabled)
    {
        add_security_buffer(0x14, ntlmv2_response, ntlmv2_blob_size + 16,
                            phase3, &phase3_bufpos);
    }
    else
    {
        add_security_buffer(0x14, ntlm_response, 24, phase3, &phase3_bufpos);
    }


    add_security_buffer(0x24, username, strlen(username), phase3,
                        &phase3_bufpos);



    add_security_buffer(0x1c, domain, strlen(domain), phase3, &phase3_bufpos);


    phase3[0x10] = phase3_bufpos;
    phase3[0x30] = phase3_bufpos;
    phase3[0x38] = phase3_bufpos;


    phase3[0x3c] = 0x02;
    phase3[0x3d] = 0x02;

    return ((const char *)make_base64_string2((unsigned char *)phase3,
                                              phase3_bufpos, gc));
}
