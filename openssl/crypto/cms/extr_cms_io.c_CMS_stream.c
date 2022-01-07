
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* data; int flags; } ;
typedef int CMS_ContentInfo ;
typedef TYPE_1__ ASN1_OCTET_STRING ;


 TYPE_1__* ASN1_OCTET_STRING_new () ;
 int ASN1_STRING_FLAG_CONT ;
 int ASN1_STRING_FLAG_NDEF ;
 int CMS_F_CMS_STREAM ;
 TYPE_1__** CMS_get0_content (int *) ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;

int CMS_stream(unsigned char ***boundary, CMS_ContentInfo *cms)
{
    ASN1_OCTET_STRING **pos;
    pos = CMS_get0_content(cms);
    if (pos == ((void*)0))
        return 0;
    if (*pos == ((void*)0))
        *pos = ASN1_OCTET_STRING_new();
    if (*pos != ((void*)0)) {
        (*pos)->flags |= ASN1_STRING_FLAG_NDEF;
        (*pos)->flags &= ~ASN1_STRING_FLAG_CONT;
        *boundary = &(*pos)->data;
        return 1;
    }
    CMSerr(CMS_F_CMS_STREAM, ERR_R_MALLOC_FAILURE);
    return 0;
}
