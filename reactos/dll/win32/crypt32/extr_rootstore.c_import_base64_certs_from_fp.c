
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DynamicBuffer {int * data; int used; int * member_2; int member_1; int member_0; } ;
typedef int line ;
typedef int * LPBYTE ;
typedef int HCERTSTORE ;
typedef int FILE ;
typedef int DWORD ;
typedef int BOOL ;


 int CERT_STORE_ADD_NEW ;
 int CRYPT_STRING_BASE64 ;
 scalar_t__ CertAddEncodedCertificateToStore (int ,int ,int *,int ,int ,int *) ;
 int * CryptMemAlloc (int ) ;
 int CryptMemFree (int *) ;
 scalar_t__ CryptStringToBinaryA (char*,int ,int ,int *,int *,int *,int *) ;
 int FALSE ;
 int TRACE (char*,...) ;
 int TRUE ;
 int X509_ASN_ENCODING ;
 int add_line_to_buffer (struct DynamicBuffer*,char*) ;
 scalar_t__ fgets (char*,int,int *) ;
 int reset_buffer (struct DynamicBuffer*) ;
 int strlen (char const*) ;
 int strncmp (char*,char const*,int ) ;

__attribute__((used)) static BOOL import_base64_certs_from_fp(FILE *fp, HCERTSTORE store)
{
    char line[1024];
    BOOL in_cert = FALSE;
    struct DynamicBuffer saved_cert = { 0, 0, ((void*)0) };
    int num_certs = 0;

    TRACE("\n");
    while (fgets(line, sizeof(line), fp))
    {
        static const char header[] = "-----BEGIN CERTIFICATE-----";
        static const char trailer[] = "-----END CERTIFICATE-----";

        if (!strncmp(line, header, strlen(header)))
        {
            TRACE("begin new certificate\n");
            in_cert = TRUE;
            reset_buffer(&saved_cert);
        }
        else if (!strncmp(line, trailer, strlen(trailer)))
        {
            DWORD size;

            TRACE("end of certificate, adding cert\n");
            in_cert = FALSE;
            if (CryptStringToBinaryA((char *)saved_cert.data, saved_cert.used,
             CRYPT_STRING_BASE64, ((void*)0), &size, ((void*)0), ((void*)0)))
            {
                LPBYTE buf = CryptMemAlloc(size);

                if (buf)
                {
                    CryptStringToBinaryA((char *)saved_cert.data,
                     saved_cert.used, CRYPT_STRING_BASE64, buf, &size, ((void*)0),
                     ((void*)0));
                    if (CertAddEncodedCertificateToStore(store,
                     X509_ASN_ENCODING, buf, size, CERT_STORE_ADD_NEW, ((void*)0)))
                        num_certs++;
                    CryptMemFree(buf);
                }
            }
        }
        else if (in_cert)
            add_line_to_buffer(&saved_cert, line);
    }
    CryptMemFree(saved_cert.data);
    TRACE("Read %d certs\n", num_certs);
    return num_certs > 0;
}
