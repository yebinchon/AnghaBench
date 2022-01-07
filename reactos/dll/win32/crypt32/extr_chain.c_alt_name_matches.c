
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int DirectoryName; int IPAddress; int pwszURL; } ;
struct TYPE_6__ {int dwAltNameChoice; TYPE_1__ u; } ;
typedef int DWORD ;
typedef TYPE_2__ CERT_ALT_NAME_ENTRY ;
typedef int BOOL ;







 int CERT_TRUST_HAS_NOT_SUPPORTED_NAME_CONSTRAINT ;
 int ERR (char*,int) ;
 int FALSE ;
 int TRUE ;
 int directory_name_matches (int *,int *) ;
 int dns_name_matches (int ,int ,int *) ;
 int ip_address_matches (int *,int *,int *) ;
 int rfc822_name_matches (int ,int ,int *) ;
 int url_matches (int ,int ,int *) ;

__attribute__((used)) static BOOL alt_name_matches(const CERT_ALT_NAME_ENTRY *name,
 const CERT_ALT_NAME_ENTRY *constraint, DWORD *trustErrorStatus, BOOL *present)
{
    BOOL match = FALSE;

    if (name->dwAltNameChoice == constraint->dwAltNameChoice)
    {
        if (present)
            *present = TRUE;
        switch (constraint->dwAltNameChoice)
        {
        case 129:
            match = rfc822_name_matches(constraint->u.pwszURL,
             name->u.pwszURL, trustErrorStatus);
            break;
        case 131:
            match = dns_name_matches(constraint->u.pwszURL,
             name->u.pwszURL, trustErrorStatus);
            break;
        case 128:
            match = url_matches(constraint->u.pwszURL,
             name->u.pwszURL, trustErrorStatus);
            break;
        case 130:
            match = ip_address_matches(&constraint->u.IPAddress,
             &name->u.IPAddress, trustErrorStatus);
            break;
        case 132:
            match = directory_name_matches(&constraint->u.DirectoryName,
             &name->u.DirectoryName);
            break;
        default:
            ERR("name choice %d unsupported in this context\n",
             constraint->dwAltNameChoice);
            *trustErrorStatus |=
             CERT_TRUST_HAS_NOT_SUPPORTED_NAME_CONSTRAINT;
        }
    }
    else if (present)
        *present = FALSE;
    return match;
}
