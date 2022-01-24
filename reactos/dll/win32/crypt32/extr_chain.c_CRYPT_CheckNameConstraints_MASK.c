#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  Subject; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CERT_NAME_CONSTRAINTS_INFO ;
typedef  TYPE_1__ CERT_INFO ;
typedef  int /*<<< orphan*/  CERT_EXTENSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__ const*) ; 

__attribute__((used)) static void FUNC3(
 const CERT_NAME_CONSTRAINTS_INFO *nameConstraints, const CERT_INFO *cert,
 DWORD *trustErrorStatus)
{
    CERT_EXTENSION *ext = FUNC2(cert);

    if (ext)
        FUNC0(ext, nameConstraints,
         trustErrorStatus);
    /* Name constraints apply to the subject alternative name as well as the
     * subject name.  From RFC 5280, section 4.2.1.10:
     * "Restrictions apply to the subject distinguished name and apply to
     *  subject alternative names."
     */
    FUNC1(&cert->Subject, nameConstraints,
     trustErrorStatus);
}