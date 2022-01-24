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
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
#define  NID_md5 133 
#define  NID_sha1 132 
#define  NID_sha224 131 
#define  NID_sha256 130 
#define  NID_sha384 129 
#define  NID_sha512 128 

char FUNC1(const EVP_MD_CTX *ctx)
{
    switch (FUNC0(ctx)) {
    case NID_md5:
    case NID_sha1:
    case NID_sha224:
    case NID_sha256:
    case NID_sha384:
    case NID_sha512:
        return 1;
    default:
        return 0;
    }
}