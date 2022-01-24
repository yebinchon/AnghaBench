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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FORMAT_ENGINE ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(EVP_PKEY_CTX *ctx, int peerform, const char *file,
                      ENGINE *e)
{
    EVP_PKEY *peer = NULL;
    ENGINE *engine = NULL;
    int ret;

    if (peerform == FORMAT_ENGINE)
        engine = e;
    peer = FUNC4(file, peerform, 0, NULL, engine, "Peer Key");
    if (peer == NULL) {
        FUNC0(bio_err, "Error reading peer key %s\n", file);
        FUNC1(bio_err);
        return 0;
    }

    ret = FUNC2(ctx, peer);

    FUNC3(peer);
    if (ret <= 0)
        FUNC1(bio_err);
    return ret;
}