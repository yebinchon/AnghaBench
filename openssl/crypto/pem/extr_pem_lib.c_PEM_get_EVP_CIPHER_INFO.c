
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iv; int const* cipher; } ;
typedef int ProcType ;
typedef TYPE_1__ EVP_CIPHER_INFO ;
typedef int EVP_CIPHER ;
typedef int ENCRYPTED ;
typedef int DEKInfo ;


 int EVP_CIPHER_iv_length (int const*) ;
 int * EVP_get_cipherbyname (char*) ;
 int PEM_F_PEM_GET_EVP_CIPHER_INFO ;
 int PEM_R_MISSING_DEK_IV ;
 int PEM_R_NOT_DEK_INFO ;
 int PEM_R_NOT_ENCRYPTED ;
 int PEM_R_NOT_PROC_TYPE ;
 int PEM_R_SHORT_HEADER ;
 int PEM_R_UNEXPECTED_DEK_IV ;
 int PEM_R_UNSUPPORTED_ENCRYPTION ;
 int PEMerr (int ,int ) ;
 int load_iv (char**,int ,int) ;
 int memset (int ,int ,int) ;
 int strcspn (char*,char*) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 scalar_t__ strspn (char*,char*) ;

int PEM_get_EVP_CIPHER_INFO(char *header, EVP_CIPHER_INFO *cipher)
{
    static const char ProcType[] = "Proc-Type:";
    static const char ENCRYPTED[] = "ENCRYPTED";
    static const char DEKInfo[] = "DEK-Info:";
    const EVP_CIPHER *enc = ((void*)0);
    int ivlen;
    char *dekinfostart, c;

    cipher->cipher = ((void*)0);
    memset(cipher->iv, 0, sizeof(cipher->iv));
    if ((header == ((void*)0)) || (*header == '\0') || (*header == '\n'))
        return 1;

    if (strncmp(header, ProcType, sizeof(ProcType)-1) != 0) {
        PEMerr(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_NOT_PROC_TYPE);
        return 0;
    }
    header += sizeof(ProcType)-1;
    header += strspn(header, " \t");

    if (*header++ != '4' || *header++ != ',')
        return 0;
    header += strspn(header, " \t");


    if (strncmp(header, ENCRYPTED, sizeof(ENCRYPTED)-1) != 0 ||
        strspn(header+sizeof(ENCRYPTED)-1, " \t\r\n") == 0) {
        PEMerr(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_NOT_ENCRYPTED);
        return 0;
    }
    header += sizeof(ENCRYPTED)-1;
    header += strspn(header, " \t\r");
    if (*header++ != '\n') {
        PEMerr(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_SHORT_HEADER);
        return 0;
    }





    if (strncmp(header, DEKInfo, sizeof(DEKInfo)-1) != 0) {
        PEMerr(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_NOT_DEK_INFO);
        return 0;
    }
    header += sizeof(DEKInfo)-1;
    header += strspn(header, " \t");





    dekinfostart = header;
    header += strcspn(header, " \t,");
    c = *header;
    *header = '\0';
    cipher->cipher = enc = EVP_get_cipherbyname(dekinfostart);
    *header = c;
    header += strspn(header, " \t");

    if (enc == ((void*)0)) {
        PEMerr(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_UNSUPPORTED_ENCRYPTION);
        return 0;
    }
    ivlen = EVP_CIPHER_iv_length(enc);
    if (ivlen > 0 && *header++ != ',') {
        PEMerr(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_MISSING_DEK_IV);
        return 0;
    } else if (ivlen == 0 && *header == ',') {
        PEMerr(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_UNEXPECTED_DEK_IV);
        return 0;
    }

    if (!load_iv(&header, cipher->iv, EVP_CIPHER_iv_length(enc)))
        return 0;

    return 1;
}
