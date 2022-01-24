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
typedef  int /*<<< orphan*/  TS_REQ ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORMAT_ASN1 ; 
 int /*<<< orphan*/  FORMAT_TEXT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,char const*,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(const char *data, const char *digest, const EVP_MD *md,
                         const char *policy, int no_nonce,
                         int cert, const char *in, const char *out, int text)
{
    int ret = 0;
    TS_REQ *query = NULL;
    BIO *in_bio = NULL;
    BIO *data_bio = NULL;
    BIO *out_bio = NULL;

    /* Build query object. */
    if (in != NULL) {
        if ((in_bio = FUNC4(in, 'r', FORMAT_ASN1)) == NULL)
            goto end;
        query = FUNC6(in_bio, NULL);
    } else {
        if (digest == NULL
            && (data_bio = FUNC4(data, 'r', FORMAT_ASN1)) == NULL)
            goto end;
        query = FUNC5(data_bio, digest, md, policy, no_nonce, cert);
    }
    if (query == NULL)
        goto end;

    if (text) {
        if ((out_bio = FUNC4(out, 'w', FORMAT_TEXT)) == NULL)
            goto end;
        if (!FUNC3(out_bio, query))
            goto end;
    } else {
        if ((out_bio = FUNC4(out, 'w', FORMAT_ASN1)) == NULL)
            goto end;
        if (!FUNC7(out_bio, query))
            goto end;
    }

    ret = 1;

 end:
    FUNC1(bio_err);
    FUNC0(in_bio);
    FUNC0(data_bio);
    FUNC0(out_bio);
    FUNC2(query);
    return ret;
}