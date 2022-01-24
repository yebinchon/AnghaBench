#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pwszRfc822Name; } ;
struct TYPE_14__ {scalar_t__ dwAltNameChoice; TYPE_1__ u; } ;
struct TYPE_13__ {size_t cExcludedSubtree; TYPE_3__* rgExcludedSubtree; } ;
struct TYPE_10__ {scalar_t__ pbData; } ;
struct TYPE_12__ {TYPE_2__ Value; } ;
struct TYPE_11__ {TYPE_6__ Base; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  size_t DWORD ;
typedef  TYPE_4__ CERT_RDN_ATTR ;
typedef  TYPE_5__ CERT_NAME_CONSTRAINTS_INFO ;
typedef  TYPE_6__ CERT_ALT_NAME_ENTRY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CERT_ALT_NAME_RFC822_NAME ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static BOOL FUNC1(const CERT_RDN_ATTR *attr,
 const CERT_NAME_CONSTRAINTS_INFO *nameConstraints, DWORD *trustErrorStatus)
{
    DWORD i;
    BOOL match = FALSE;

    for (i = 0; !match && i < nameConstraints->cExcludedSubtree; i++)
    {
        const CERT_ALT_NAME_ENTRY *constraint =
         &nameConstraints->rgExcludedSubtree[i].Base;

        if (constraint->dwAltNameChoice == CERT_ALT_NAME_RFC822_NAME)
            match = FUNC0(constraint->u.pwszRfc822Name,
             (LPCWSTR)attr->Value.pbData, trustErrorStatus);
    }
    return match;
}