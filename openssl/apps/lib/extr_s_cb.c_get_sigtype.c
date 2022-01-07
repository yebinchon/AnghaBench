
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *get_sigtype(int nid)
{
    switch (nid) {
    case 134:
        return "RSA";

    case 133:
        return "RSA-PSS";

    case 136:
        return "DSA";

     case 135:
        return "ECDSA";

     case 132:
        return "Ed25519";

     case 131:
        return "Ed448";

     case 130:
        return "gost2001";

     case 129:
        return "gost2012_256";

     case 128:
        return "gost2012_512";

    default:
        return ((void*)0);
    }
}
