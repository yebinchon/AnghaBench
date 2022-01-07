
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {TYPE_1__* pCertInfo; } ;
struct TYPE_4__ {int NotBefore; } ;
typedef TYPE_2__* PCCERT_CONTEXT ;


 int * format_long_date (int *) ;

__attribute__((used)) static WCHAR *field_format_from_date(PCCERT_CONTEXT cert)
{
    return format_long_date(&cert->pCertInfo->NotBefore);
}
