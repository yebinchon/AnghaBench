
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ g_ppk_d ;
 scalar_t__ g_ppk_n ;
 int memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int,int) ;
 int rdssl_md5_clear (void*) ;
 int rdssl_md5_complete (void*,char*) ;
 void* rdssl_md5_info_create () ;
 int rdssl_md5_info_delete (void*) ;
 int rdssl_md5_transform (void*,char*,int) ;
 int rdssl_mod_exp (char*,int,char*,int,char*,int,char*,int) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;

int
rdssl_sign_ok(char* e_data, int e_len, char* n_data, int n_len,
    char* sign_data, int sign_len, char* sign_data2, int sign_len2, char* testkey)
{
    char* key;
    char* md5_final;
    void* md5;

    if ((e_len != 4) || (n_len != 64) || (sign_len != 64) || (sign_len2 != 64))
    {
        return 1;
    }
    md5 = rdssl_md5_info_create();
    if (!md5)
    {
        return 1;
    }
    key = (char*)xmalloc(176);
    md5_final = (char*)xmalloc(64);

    memcpy(key, testkey, 176);

    memcpy(key + 32, e_data, 4);
    memcpy(key + 36, n_data, 64);
    rdssl_md5_clear(md5);

    rdssl_md5_transform(md5, key, 108);

    memset(md5_final, 0xff, 64);

    rdssl_md5_complete(md5, md5_final);

    md5_final[16] = 0;
    md5_final[62] = 1;
    md5_final[63] = 0;

    rdssl_mod_exp(sign_data, 64, md5_final, 64, (char*)g_ppk_n, 64,
        (char*)g_ppk_d, 64);

    rdssl_md5_info_delete(md5);
    xfree(key);
    xfree(md5_final);
    return memcmp(sign_data, sign_data2, sign_len2);
}
