
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_CMP_PKIFREETEXT ;
typedef int OSSL_CMP_CTX ;
typedef int ASN1_UTF8STRING ;


 int ADVANCE_BUFFER ;
 char* ASN1_STRING_get0_data (int *) ;
 int BIO_snprintf (char*,size_t,char*,...) ;
 char* CMP_PKIFAILUREINFO_to_string (int) ;
 int * OSSL_CMP_CTX_get0_statusString (int *) ;
 int OSSL_CMP_CTX_get_failInfoCode (int *) ;
 int OSSL_CMP_CTX_get_status (int *) ;
 int OSSL_CMP_PKIFAILUREINFO_MAX ;
 int OSSL_CMP_PKISTATUS_accepted ;
 int OSSL_CMP_PKISTATUS_grantedWithMods ;
 char* ossl_cmp_PKIStatus_to_string (int) ;
 int sk_ASN1_UTF8STRING_num (int *) ;
 int * sk_ASN1_UTF8STRING_value (int *,int) ;

char *OSSL_CMP_CTX_snprint_PKIStatus(OSSL_CMP_CTX *ctx, char *buf,
                                     size_t bufsize)
{
    int status, failure, fail_info;
    const char *status_string, *failure_string;
    OSSL_CMP_PKIFREETEXT *status_strings;
    ASN1_UTF8STRING *text;
    int i;
    int printed_chars;
    int failinfo_found = 0;
    int n_status_strings;
    char* write_ptr = buf;







    if (ctx == ((void*)0)
            || buf == ((void*)0)
            || (status = OSSL_CMP_CTX_get_status(ctx)) < 0
            || (status_string = ossl_cmp_PKIStatus_to_string(status)) == ((void*)0))
        return ((void*)0);
    printed_chars = BIO_snprintf(write_ptr, bufsize, "%s", status_string);
    if (printed_chars < 0 || (size_t)printed_chars >= bufsize) return ((void*)0); write_ptr += printed_chars; bufsize -= printed_chars;;


    if ((fail_info = OSSL_CMP_CTX_get_failInfoCode(ctx)) > 0) {
        printed_chars = BIO_snprintf(write_ptr, bufsize, "; PKIFailureInfo: ");
        if (printed_chars < 0 || (size_t)printed_chars >= bufsize) return ((void*)0); write_ptr += printed_chars; bufsize -= printed_chars;;
        for (failure = 0; failure <= OSSL_CMP_PKIFAILUREINFO_MAX; failure++) {
            if ((fail_info & (1 << failure)) != 0) {
                failure_string = CMP_PKIFAILUREINFO_to_string(failure);
                if (failure_string != ((void*)0)) {
                    printed_chars = BIO_snprintf(write_ptr, bufsize, "%s%s",
                                                 failure > 0 ? ", " : "",
                                                 failure_string);
                    if (printed_chars < 0 || (size_t)printed_chars >= bufsize) return ((void*)0); write_ptr += printed_chars; bufsize -= printed_chars;;
                    failinfo_found = 1;
                }
            }
        }
    }
    if (!failinfo_found && status != OSSL_CMP_PKISTATUS_accepted
            && status != OSSL_CMP_PKISTATUS_grantedWithMods) {
        printed_chars = BIO_snprintf(write_ptr, bufsize, "; <no failure info>");
        if (printed_chars < 0 || (size_t)printed_chars >= bufsize) return ((void*)0); write_ptr += printed_chars; bufsize -= printed_chars;;
    }


    status_strings = OSSL_CMP_CTX_get0_statusString(ctx);
    n_status_strings = sk_ASN1_UTF8STRING_num(status_strings);
    if (n_status_strings > 0) {
        printed_chars = BIO_snprintf(write_ptr, bufsize, "; StatusString%s: ",
                                     n_status_strings > 1 ? "s" : "");
        if (printed_chars < 0 || (size_t)printed_chars >= bufsize) return ((void*)0); write_ptr += printed_chars; bufsize -= printed_chars;;
        for (i = 0; i < n_status_strings; i++) {
            text = sk_ASN1_UTF8STRING_value(status_strings, i);
            printed_chars = BIO_snprintf(write_ptr, bufsize, "\"%s\"%s",
                                         ASN1_STRING_get0_data(text),
                                         i < n_status_strings - 1 ? ", " : "");
            if (printed_chars < 0 || (size_t)printed_chars >= bufsize) return ((void*)0); write_ptr += printed_chars; bufsize -= printed_chars;;
        }
    }

    return buf;
}
