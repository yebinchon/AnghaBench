
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ossl_prov_util_nid_to_name(int nid)
{


    switch (nid) {

    case 138:
        return "SHA1";
    case 137:
        return "SHA-224";
    case 136:
        return "SHA-256";
    case 135:
        return "SHA-384";
    case 130:
        return "SHA-512";
    case 129:
        return "SHA-512/224";
    case 128:
        return "SHA-512/256";
    case 134:
        return "SHA3-224";
    case 133:
        return "SHA3-256";
    case 132:
        return "SHA3-384";
    case 131:
        return "SHA3-512";


    case 149:
        return "AES-256-ECB";
    case 154:
        return "AES-192-ECB";
    case 160:
        return "AES-128-ECB";
    case 152:
        return "AES-256-CBC";
    case 157:
        return "AES-192-CBC";
    case 163:
        return "AES-128-CBC";
    case 150:
        return "AES-256-CTR";
    case 155:
        return "AES-192-CTR";
    case 161:
        return "AES-128-CTR";
    case 147:
        return "AES-256-XTS";
    case 158:
        return "AES-128-XTS";
    case 148:
        return "AES-256-GCM";
    case 153:
        return "AES-192-GCM";
    case 159:
        return "AES-128-GCM";
    case 151:
        return "AES-256-CCM";
    case 156:
        return "AES-192-CCM";
    case 162:
        return "AES-128-CCM";
    case 140:
        return "AES-256-WRAP";
    case 142:
        return "AES-192-WRAP";
    case 144:
        return "AES-128-WRAP";
    case 139:
        return "AES-256-WRAP-PAD";
    case 141:
        return "AES-192-WRAP-PAD";
    case 143:
        return "AES-128-WRAP-PAD";
    case 145:
        return "DES-EDE3";
    case 146:
        return "DES-EDE3-CBC";
    default:
        break;
    }

    return ((void*)0);
}
