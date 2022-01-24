#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct DynamicBuffer {int /*<<< orphan*/ * data; int /*<<< orphan*/  used; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_STORE_ADD_NEW ; 
 int /*<<< orphan*/  CRYPT_STRING_BASE64 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int TRUE ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC5 (struct DynamicBuffer*,char*) ; 
 scalar_t__ FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct DynamicBuffer*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC10(FILE *fp, HCERTSTORE store)
{
    char line[1024];
    BOOL in_cert = FALSE;
    struct DynamicBuffer saved_cert = { 0, 0, NULL };
    int num_certs = 0;

    FUNC4("\n");
    while (FUNC6(line, sizeof(line), fp))
    {
        static const char header[] = "-----BEGIN CERTIFICATE-----";
        static const char trailer[] = "-----END CERTIFICATE-----";

        if (!FUNC9(line, header, FUNC8(header)))
        {
            FUNC4("begin new certificate\n");
            in_cert = TRUE;
            FUNC7(&saved_cert);
        }
        else if (!FUNC9(line, trailer, FUNC8(trailer)))
        {
            DWORD size;

            FUNC4("end of certificate, adding cert\n");
            in_cert = FALSE;
            if (FUNC3((char *)saved_cert.data, saved_cert.used,
             CRYPT_STRING_BASE64, NULL, &size, NULL, NULL))
            {
                LPBYTE buf = FUNC1(size);

                if (buf)
                {
                    FUNC3((char *)saved_cert.data,
                     saved_cert.used, CRYPT_STRING_BASE64, buf, &size, NULL,
                     NULL);
                    if (FUNC0(store,
                     X509_ASN_ENCODING, buf, size, CERT_STORE_ADD_NEW, NULL))
                        num_certs++;
                    FUNC2(buf);
                }
            }
        }
        else if (in_cert)
            FUNC5(&saved_cert, line);
    }
    FUNC2(saved_cert.data);
    FUNC4("Read %d certs\n", num_certs);
    return num_certs > 0;
}