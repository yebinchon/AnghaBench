#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_10__ {TYPE_1__* sign; } ;
struct TYPE_13__ {TYPE_2__ d; } ;
struct TYPE_12__ {TYPE_3__* issuer_and_serial; } ;
struct TYPE_11__ {int /*<<< orphan*/  serial; int /*<<< orphan*/  issuer; } ;
struct TYPE_9__ {int /*<<< orphan*/  cert; } ;
typedef  TYPE_4__ PKCS7_SIGNER_INFO ;
typedef  TYPE_5__ PKCS7 ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

X509 *FUNC2(PKCS7 *p7, PKCS7_SIGNER_INFO *si)
{
    if (FUNC0(p7))
        return (FUNC1(p7->d.sign->cert,
                                               si->issuer_and_serial->issuer,
                                               si->
                                               issuer_and_serial->serial));
    else
        return NULL;
}