
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int md_kt_t ;


 int MD4_DIGEST_LENGTH ;
 int md_full (int const*,int const*,int,int *) ;
 int * md_kt_get (char*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
gen_md4_hash(const uint8_t *data, int data_len, uint8_t *result)
{

    const md_kt_t *md4_kt = md_kt_get("MD4");
    uint8_t md[MD4_DIGEST_LENGTH];

    md_full(md4_kt, data, data_len, md);
    memcpy(result, md, MD4_DIGEST_LENGTH);
}
