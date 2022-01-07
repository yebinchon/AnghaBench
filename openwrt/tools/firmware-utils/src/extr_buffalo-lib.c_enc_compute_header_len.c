
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned long ENC_MAGIC_LEN ;
 unsigned long strlen (char*) ;

unsigned long enc_compute_header_len(char *product, char *version)
{
 return ENC_MAGIC_LEN + 1 + strlen(product) + 1 +
        strlen(version) + 1 + 3 * sizeof(uint32_t);
}
