
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;




 int SSL_get_state (int const*) ;
 scalar_t__ ossl_statem_in_error (int const*) ;

const char *SSL_state_string(const SSL *s)
{
    if (ossl_statem_in_error(s))
        return "SSLERR";

    switch (SSL_get_state(s)) {
    case 141:
        return "TRNP";
    case 130:
        return "TWST";
    case 138:
        return "TWCS";
    case 172:
        return "TRCS";
    case 164:
        return "TRST";
    case 153:
        return "TWNP";
    case 175:
        return "PINIT ";
    case 151:
        return "SSLOK ";
    case 158:
        return "TWCH";
    case 162:
        return "TRSH";
    case 174:
        return "TRSC";
    case 166:
        return "TRSKE";
    case 173:
        return "TRCR";
    case 163:
        return "TRSD";
    case 161:
        return "TWCC";
    case 155:
        return "TWCKE";
    case 160:
        return "TWCV";
    case 136:
    case 159:
        return "TWCCS";
    case 134:
    case 156:
        return "TWFIN";
    case 147:
    case 170:
        return "TRCCS";
    case 144:
    case 168:
        return "TRFIN";
    case 133:
        return "TWHR";
    case 146:
        return "TRCH";
    case 128:
        return "TWSH";
    case 140:
        return "TWSC";
    case 132:
        return "TWSKE";
    case 139:
        return "TWCR";
    case 129:
        return "TWSD";
    case 149:
        return "TRCC";
    case 143:
        return "TRCKE";
    case 148:
        return "TRCV";
    case 177:
        return "DRCHV";
    case 176:
        return "DWCHV";
    case 135:
        return "TWEE";
    case 169:
        return "TREE";
    case 171:
        return "TRSCV";
    case 137:
        return "TRSCV";
    case 167:
        return "TRHR";
    case 131:
        return "TWSKU";
    case 154:
        return "TWCKU";
    case 142:
        return "TRCKU";
    case 165:
        return "TRSKU";
    case 152:
        return "TED";
    case 150:
        return "TPEDE";
    case 157:
        return "TWEOED";
    case 145:
        return "TWEOED";
    default:
        return "UNKWN ";
    }
}
