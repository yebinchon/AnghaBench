
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_UNSUPPORTED_KEY_SIZE ;




__attribute__((used)) static int rc2_magic_to_keybits(int magic)
{
    switch (magic) {
    case 130:
        return 128;
    case 128:
        return 64;
    case 129:
        return 40;
    }
    ERR_raise(ERR_LIB_PROV, PROV_R_UNSUPPORTED_KEY_SIZE);
    return 0;
}
