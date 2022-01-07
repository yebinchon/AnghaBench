
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_UNSUPPORTED_KEY_SIZE ;
 int RC2_128_MAGIC ;
 int RC2_40_MAGIC ;
 int RC2_64_MAGIC ;

__attribute__((used)) static int rc2_keybits_to_magic(int keybits)
{
    switch (keybits) {
    case 128:
        return RC2_128_MAGIC;
    case 64:
        return RC2_64_MAGIC;
    case 40:
        return RC2_40_MAGIC;
    }
    ERR_raise(ERR_LIB_PROV, PROV_R_UNSUPPORTED_KEY_SIZE);
    return 0;
}
