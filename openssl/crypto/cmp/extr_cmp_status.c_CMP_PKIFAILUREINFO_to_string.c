
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *CMP_PKIFAILUREINFO_to_string(int number)
{
    switch (number) {
    case 153:
        return "badAlg";
    case 149:
        return "badMessageCheck";
    case 146:
        return "badRequest";
    case 144:
        return "badTime";
    case 152:
        return "badCertId";
    case 150:
        return "badDataFormat";
    case 129:
        return "wrongAuthority";
    case 140:
        return "incorrectData";
    case 139:
        return "missingTimeStamp";
    case 148:
        return "badPOP";
    case 142:
        return "certRevoked";
    case 143:
        return "certConfirmed";
    case 128:
        return "wrongIntegrity";
    case 147:
        return "badRecipientNonce";
    case 134:
        return "timeNotAvailable";
    case 131:
        return "unacceptedPolicy";
    case 132:
        return "unacceptedExtension";
    case 154:
        return "addInfoNotAvailable";
    case 145:
        return "badSenderNonce";
    case 151:
        return "badCertTemplate";
    case 137:
        return "signerNotTrusted";
    case 133:
        return "transactionIdInUse";
    case 130:
        return "unsupportedVersion";
    case 138:
        return "notAuthorized";
    case 135:
        return "systemUnavail";
    case 136:
        return "systemFailure";
    case 141:
        return "duplicateCertReq";
    default:
        return ((void*)0);
    }
}
