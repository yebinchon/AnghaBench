
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rgExtension; int cExtension; } ;
typedef scalar_t__ PCERT_EXTENSION ;
typedef TYPE_1__ CERT_INFO ;


 scalar_t__ CertFindExtension (int ,int ,int ) ;
 int szOID_SUBJECT_ALT_NAME ;
 int szOID_SUBJECT_ALT_NAME2 ;

__attribute__((used)) static inline PCERT_EXTENSION get_subject_alt_name_ext(const CERT_INFO *cert)
{
    PCERT_EXTENSION ext;

    ext = CertFindExtension(szOID_SUBJECT_ALT_NAME2,
     cert->cExtension, cert->rgExtension);
    if (!ext)
        ext = CertFindExtension(szOID_SUBJECT_ALT_NAME,
         cert->cExtension, cert->rgExtension);
    return ext;
}
