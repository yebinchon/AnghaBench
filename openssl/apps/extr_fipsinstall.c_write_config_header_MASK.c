#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC1(BIO *out, const char *prov_name,
                               const char *section)
{
    return FUNC0(out, "openssl_conf = openssl_init\n\n")
           && FUNC0(out, "[openssl_init]\n")
           && FUNC0(out, "providers = provider_section\n\n")
           && FUNC0(out, "[provider_section]\n")
           && FUNC0(out, "%s = %s\n\n", prov_name, section);
}