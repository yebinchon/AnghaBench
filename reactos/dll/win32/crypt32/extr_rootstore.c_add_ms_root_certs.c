
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cb; int pb; } ;
typedef int HCERTSTORE ;
typedef size_t DWORD ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int CERT_STORE_ADD_NEW ;
 int CertAddEncodedCertificateToStore (int ,int ,int ,int ,int ,int *) ;
 int GetLastError () ;
 int TRACE (char*) ;
 int WARN (char*,size_t,int ) ;
 int X509_ASN_ENCODING ;
 TYPE_1__* msRootCerts ;

__attribute__((used)) static void add_ms_root_certs(HCERTSTORE to)
{
    DWORD i;

    TRACE("\n");

    for (i = 0; i < ARRAY_SIZE(msRootCerts); i++)
        if (!CertAddEncodedCertificateToStore(to, X509_ASN_ENCODING,
         msRootCerts[i].pb, msRootCerts[i].cb, CERT_STORE_ADD_NEW, ((void*)0)))
            WARN("adding root cert %d failed: %08x\n", i, GetLastError());
}
