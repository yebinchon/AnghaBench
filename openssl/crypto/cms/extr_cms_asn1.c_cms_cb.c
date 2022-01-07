
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ndef_bio; int out; int boundary; } ;
typedef int CMS_ContentInfo ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_STREAM_ARG ;
typedef int ASN1_ITEM ;






 int CMS_dataFinal (int *,int ) ;
 int CMS_dataInit (int *,int ) ;
 int CMS_stream (int *,int *) ;

__attribute__((used)) static int cms_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                  void *exarg)
{
    ASN1_STREAM_ARG *sarg = exarg;
    CMS_ContentInfo *cms = ((void*)0);
    if (pval)
        cms = (CMS_ContentInfo *)*pval;
    else
        return 1;
    switch (operation) {

    case 128:
        if (CMS_stream(&sarg->boundary, cms) <= 0)
            return 0;

    case 130:
        sarg->ndef_bio = CMS_dataInit(cms, sarg->out);
        if (!sarg->ndef_bio)
            return 0;
        break;

    case 129:
    case 131:
        if (CMS_dataFinal(cms, sarg->ndef_bio) <= 0)
            return 0;
        break;

    }
    return 1;
}
