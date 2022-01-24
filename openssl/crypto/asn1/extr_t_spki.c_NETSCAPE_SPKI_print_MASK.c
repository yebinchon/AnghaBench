#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  data; scalar_t__ length; } ;
struct TYPE_8__ {int /*<<< orphan*/ * algorithm; } ;
struct TYPE_10__ {TYPE_3__* signature; TYPE_2__ sig_algor; TYPE_1__* spkac; } ;
struct TYPE_9__ {int length; scalar_t__ data; } ;
struct TYPE_7__ {TYPE_5__* challenge; int /*<<< orphan*/  pubkey; } ;
typedef  TYPE_4__ NETSCAPE_SPKI ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  TYPE_5__ ASN1_IA5STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int NID_undef ; 
 char* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(BIO *out, NETSCAPE_SPKI *spki)
{
    EVP_PKEY *pkey;
    ASN1_IA5STRING *chal;
    ASN1_OBJECT *spkioid;
    int i, n;
    char *s;
    FUNC0(out, "Netscape SPKI:\n");
    FUNC7(&spkioid, NULL, NULL, NULL, spki->spkac->pubkey);
    i = FUNC5(spkioid);
    FUNC0(out, "  Public Key Algorithm: %s\n",
               (i == NID_undef) ? "UNKNOWN" : FUNC4(i));
    pkey = FUNC6(spki->spkac->pubkey);
    if (pkey == NULL)
        FUNC0(out, "  Unable to load public key\n");
    else {
        FUNC3(out, pkey, 4, NULL);
        FUNC2(pkey);
    }
    chal = spki->spkac->challenge;
    if (chal->length)
        FUNC0(out, "  Challenge String: %s\n", chal->data);
    i = FUNC5(spki->sig_algor.algorithm);
    FUNC0(out, "  Signature Algorithm: %s",
               (i == NID_undef) ? "UNKNOWN" : FUNC4(i));

    n = spki->signature->length;
    s = (char *)spki->signature->data;
    for (i = 0; i < n; i++) {
        if ((i % 18) == 0)
            FUNC1(out, "\n      ", 7);
        FUNC0(out, "%02x%s", (unsigned char)s[i],
                   ((i + 1) == n) ? "" : ":");
    }
    FUNC1(out, "\n", 1);
    return 1;
}