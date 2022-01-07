
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int pwszRfc822Name; } ;
struct TYPE_14__ {scalar_t__ dwAltNameChoice; TYPE_1__ u; } ;
struct TYPE_13__ {size_t cExcludedSubtree; TYPE_3__* rgExcludedSubtree; } ;
struct TYPE_10__ {scalar_t__ pbData; } ;
struct TYPE_12__ {TYPE_2__ Value; } ;
struct TYPE_11__ {TYPE_6__ Base; } ;
typedef int LPCWSTR ;
typedef size_t DWORD ;
typedef TYPE_4__ CERT_RDN_ATTR ;
typedef TYPE_5__ CERT_NAME_CONSTRAINTS_INFO ;
typedef TYPE_6__ CERT_ALT_NAME_ENTRY ;
typedef int BOOL ;


 scalar_t__ CERT_ALT_NAME_RFC822_NAME ;
 int FALSE ;
 int rfc822_name_matches (int ,int ,size_t*) ;

__attribute__((used)) static BOOL rfc822_attr_matches_excluded_name(const CERT_RDN_ATTR *attr,
 const CERT_NAME_CONSTRAINTS_INFO *nameConstraints, DWORD *trustErrorStatus)
{
    DWORD i;
    BOOL match = FALSE;

    for (i = 0; !match && i < nameConstraints->cExcludedSubtree; i++)
    {
        const CERT_ALT_NAME_ENTRY *constraint =
         &nameConstraints->rgExcludedSubtree[i].Base;

        if (constraint->dwAltNameChoice == CERT_ALT_NAME_RFC822_NAME)
            match = rfc822_name_matches(constraint->u.pwszRfc822Name,
             (LPCWSTR)attr->Value.pbData, trustErrorStatus);
    }
    return match;
}
