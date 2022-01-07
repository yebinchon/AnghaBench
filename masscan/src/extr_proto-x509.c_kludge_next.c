
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALGOID0_TAG ;
 int ENC_TAG ;
 int EXTENSIONS_A_TAG ;


 int EXTENSION_TAG ;
 int EXTVALUE3_TAG ;
 int EXTVALUE_TAG ;


 int ISSUER0_TAG ;

 int ISSUER1_TAG ;

 int ISSUERNAME_TAG ;
 int PADDING ;

 int PUBKEY0_TAG ;

 int SERIAL_TAG ;

 int SIG0_TAG ;

 int SUBJECT0_TAG ;

 int SUBJECT1_TAG ;

 int SUBJECTNAME_TAG ;


 int VALIDITY_TAG ;

 int VNAFTER_TAG ;


__attribute__((used)) static unsigned
kludge_next(unsigned state)
{
    switch (state) {
    case 131:
        return ALGOID0_TAG;
    case 144:
        return ENC_TAG;
    case 136:
        return SIG0_TAG;
    case 129:
        return SERIAL_TAG;
    case 135:
        return ISSUER0_TAG;
    case 140:
        return VALIDITY_TAG;
    case 134:
        return PUBKEY0_TAG;
    case 139:
        return ISSUER1_TAG;
    case 133:
        return SUBJECT1_TAG;
    case 138:
        return ISSUERNAME_TAG;
    case 142:
        return EXTENSION_TAG;
    case 143:
        return EXTVALUE_TAG;
    case 141:
        return EXTVALUE3_TAG;
    case 132:
        return SUBJECTNAME_TAG;
    case 130:
        return SUBJECT0_TAG;
    case 128:
        return VNAFTER_TAG;
    case 137:
        return EXTENSIONS_A_TAG;
    default:
        return PADDING;
    }
}
