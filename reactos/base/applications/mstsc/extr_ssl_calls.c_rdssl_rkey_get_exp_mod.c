
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8 ;
typedef int uint32 ;
struct TYPE_2__ {char pubexp; } ;
typedef TYPE_1__ RSAPUBKEY ;
typedef int PUBLICKEYSTRUC ;


 int error (char*,char*,char*,int ,char*,int ) ;
 int memcpy (char*,char*,int ) ;

int rdssl_rkey_get_exp_mod(uint8 * rkey, uint8 * exponent, uint32 max_exp_len, uint8 * modulus,
    uint32 max_mod_len)
{
    RSAPUBKEY *desc = (RSAPUBKEY *)(rkey + sizeof(PUBLICKEYSTRUC));
    if (!rkey || !exponent || !max_exp_len || !modulus || !max_mod_len)
    {
        error("rdssl_rkey_get_exp_mod %p %p %ld %p %ld\n", rkey, exponent, max_exp_len, modulus, max_mod_len);
        return -1;
    }
    memcpy (exponent, &desc->pubexp, max_exp_len);
    memcpy (modulus, rkey + sizeof(PUBLICKEYSTRUC) + sizeof(RSAPUBKEY), max_mod_len);
    return 0;
}
