#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  DirectoryName; int /*<<< orphan*/  IPAddress; int /*<<< orphan*/  pwszURL; } ;
struct TYPE_6__ {int dwAltNameChoice; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_2__ CERT_ALT_NAME_ENTRY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
#define  CERT_ALT_NAME_DIRECTORY_NAME 132 
#define  CERT_ALT_NAME_DNS_NAME 131 
#define  CERT_ALT_NAME_IP_ADDRESS 130 
#define  CERT_ALT_NAME_RFC822_NAME 129 
#define  CERT_ALT_NAME_URL 128 
 int /*<<< orphan*/  CERT_TRUST_HAS_NOT_SUPPORTED_NAME_CONSTRAINT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC6(const CERT_ALT_NAME_ENTRY *name,
 const CERT_ALT_NAME_ENTRY *constraint, DWORD *trustErrorStatus, BOOL *present)
{
    BOOL match = FALSE;

    if (name->dwAltNameChoice == constraint->dwAltNameChoice)
    {
        if (present)
            *present = TRUE;
        switch (constraint->dwAltNameChoice)
        {
        case CERT_ALT_NAME_RFC822_NAME:
            match = FUNC4(constraint->u.pwszURL,
             name->u.pwszURL, trustErrorStatus);
            break;
        case CERT_ALT_NAME_DNS_NAME:
            match = FUNC2(constraint->u.pwszURL,
             name->u.pwszURL, trustErrorStatus);
            break;
        case CERT_ALT_NAME_URL:
            match = FUNC5(constraint->u.pwszURL,
             name->u.pwszURL, trustErrorStatus);
            break;
        case CERT_ALT_NAME_IP_ADDRESS:
            match = FUNC3(&constraint->u.IPAddress,
             &name->u.IPAddress, trustErrorStatus);
            break;
        case CERT_ALT_NAME_DIRECTORY_NAME:
            match = FUNC1(&constraint->u.DirectoryName,
             &name->u.DirectoryName);
            break;
        default:
            FUNC0("name choice %d unsupported in this context\n",
             constraint->dwAltNameChoice);
            *trustErrorStatus |=
             CERT_TRUST_HAS_NOT_SUPPORTED_NAME_CONSTRAINT;
        }
    }
    else if (present)
        *present = FALSE;
    return match;
}