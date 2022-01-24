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
typedef  int /*<<< orphan*/  X509_EXTENSION ;

/* Variables and functions */
#define  NID_basic_constraints 141 
#define  NID_certificate_policies 140 
#define  NID_crl_distribution_points 139 
#define  NID_ext_key_usage 138 
#define  NID_inhibit_any_policy 137 
#define  NID_key_usage 136 
#define  NID_name_constraints 135 
#define  NID_netscape_cert_type 134 
#define  NID_policy_constraints 133 
#define  NID_policy_mappings 132 
#define  NID_proxyCertInfo 131 
#define  NID_sbgp_autonomousSysNum 130 
#define  NID_sbgp_ipAddrBlock 129 
#define  NID_subject_alt_name 128 
 int NID_undef ; 
 scalar_t__ FUNC0 (int*,int const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(X509_EXTENSION *ex)
{
    /*
     * This table is a list of the NIDs of supported extensions: that is
     * those which are used by the verify process. If an extension is
     * critical and doesn't appear in this list then the verify process will
     * normally reject the certificate. The list must be kept in numerical
     * order because it will be searched using bsearch.
     */

    static const int supported_nids[] = {
        NID_netscape_cert_type, /* 71 */
        NID_key_usage,          /* 83 */
        NID_subject_alt_name,   /* 85 */
        NID_basic_constraints,  /* 87 */
        NID_certificate_policies, /* 89 */
        NID_crl_distribution_points, /* 103 */
        NID_ext_key_usage,      /* 126 */
#ifndef OPENSSL_NO_RFC3779
        NID_sbgp_ipAddrBlock,   /* 290 */
        NID_sbgp_autonomousSysNum, /* 291 */
#endif
        NID_policy_constraints, /* 401 */
        NID_proxyCertInfo,      /* 663 */
        NID_name_constraints,   /* 666 */
        NID_policy_mappings,    /* 747 */
        NID_inhibit_any_policy  /* 748 */
    };

    int ex_nid = FUNC1(FUNC3(ex));

    if (ex_nid == NID_undef)
        return 0;

    if (FUNC0(&ex_nid, supported_nids, FUNC2(supported_nids)))
        return 1;
    return 0;
}