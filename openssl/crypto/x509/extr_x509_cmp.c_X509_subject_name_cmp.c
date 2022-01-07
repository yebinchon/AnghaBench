
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int subject; } ;
struct TYPE_6__ {TYPE_1__ cert_info; } ;
typedef TYPE_2__ X509 ;


 int X509_NAME_cmp (int ,int ) ;

int X509_subject_name_cmp(const X509 *a, const X509 *b)
{
    return X509_NAME_cmp(a->cert_info.subject, b->cert_info.subject);
}
