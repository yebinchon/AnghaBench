#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * prev; struct TYPE_11__* next; int /*<<< orphan*/  owner; int /*<<< orphan*/ * ctx; int /*<<< orphan*/  const* algo; } ;
struct TYPE_9__ {void* ptr; } ;
struct TYPE_10__ {TYPE_1__ p; int /*<<< orphan*/  free; int /*<<< orphan*/  finish; int /*<<< orphan*/  update; int /*<<< orphan*/  reset; int /*<<< orphan*/  block_size; int /*<<< orphan*/  result_size; } ;
typedef  TYPE_2__ PX_MD ;
typedef  TYPE_3__ OSSLDigest ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentResourceOwner ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int PXE_NO_HASH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  digest_block_size ; 
 int /*<<< orphan*/  digest_finish ; 
 int /*<<< orphan*/  digest_free ; 
 int /*<<< orphan*/  digest_free_callback ; 
 int /*<<< orphan*/  digest_reset ; 
 int digest_resowner_callback_registered ; 
 int /*<<< orphan*/  digest_result_size ; 
 int /*<<< orphan*/  digest_update ; 
 TYPE_3__* open_digests ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 TYPE_2__* FUNC7 (int) ; 
 int px_openssl_initialized ; 

int
FUNC8(const char *name, PX_MD **res)
{
	const EVP_MD *md;
	EVP_MD_CTX *ctx;
	PX_MD	   *h;
	OSSLDigest *digest;

	if (!px_openssl_initialized)
	{
		px_openssl_initialized = 1;
		FUNC4();
	}

	if (!digest_resowner_callback_registered)
	{
		FUNC5(digest_free_callback, NULL);
		digest_resowner_callback_registered = true;
	}

	md = FUNC2(name);
	if (md == NULL)
		return PXE_NO_HASH;

	/*
	 * Create an OSSLDigest object, an OpenSSL MD object, and a PX_MD object.
	 * The order is crucial, to make sure we don't leak anything on
	 * out-of-memory or other error.
	 */
	digest = FUNC3(TopMemoryContext, sizeof(*digest));

	ctx = FUNC1();
	if (!ctx)
	{
		FUNC6(digest);
		return -1;
	}
	if (FUNC0(ctx, md, NULL) == 0)
	{
		FUNC6(digest);
		return -1;
	}

	digest->algo = md;
	digest->ctx = ctx;
	digest->owner = CurrentResourceOwner;
	digest->next = open_digests;
	digest->prev = NULL;
	open_digests = digest;

	/* The PX_MD object is allocated in the current memory context. */
	h = FUNC7(sizeof(*h));
	h->result_size = digest_result_size;
	h->block_size = digest_block_size;
	h->reset = digest_reset;
	h->update = digest_update;
	h->finish = digest_finish;
	h->free = digest_free;
	h->p.ptr = (void *) digest;

	*res = h;
	return 0;
}