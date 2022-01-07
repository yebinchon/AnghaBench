
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t cPermittedSubtree; TYPE_1__* rgPermittedSubtree; } ;
struct TYPE_4__ {int Base; } ;
typedef size_t DWORD ;
typedef TYPE_2__ CERT_NAME_CONSTRAINTS_INFO ;
typedef int CERT_ALT_NAME_ENTRY ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ alt_name_matches (int const*,int *,size_t*,scalar_t__*) ;

__attribute__((used)) static BOOL alt_name_matches_permitted_name(const CERT_ALT_NAME_ENTRY *name,
 const CERT_NAME_CONSTRAINTS_INFO *nameConstraints, DWORD *trustErrorStatus,
 BOOL *present)
{
    DWORD i;
    BOOL match = FALSE;

    for (i = 0; !match && i < nameConstraints->cPermittedSubtree; i++)
        match = alt_name_matches(name,
         &nameConstraints->rgPermittedSubtree[i].Base, trustErrorStatus,
         present);
    return match;
}
