
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * prev; struct TYPE_11__* next; int owner; int * ctx; int const* algo; } ;
struct TYPE_9__ {void* ptr; } ;
struct TYPE_10__ {TYPE_1__ p; int free; int finish; int update; int reset; int block_size; int result_size; } ;
typedef TYPE_2__ PX_MD ;
typedef TYPE_3__ OSSLDigest ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int CurrentResourceOwner ;
 scalar_t__ EVP_DigestInit_ex (int *,int const*,int *) ;
 int * EVP_MD_CTX_create () ;
 int * EVP_get_digestbyname (char const*) ;
 TYPE_3__* MemoryContextAlloc (int ,int) ;
 int OpenSSL_add_all_algorithms () ;
 int PXE_NO_HASH ;
 int RegisterResourceReleaseCallback (int ,int *) ;
 int TopMemoryContext ;
 int digest_block_size ;
 int digest_finish ;
 int digest_free ;
 int digest_free_callback ;
 int digest_reset ;
 int digest_resowner_callback_registered ;
 int digest_result_size ;
 int digest_update ;
 TYPE_3__* open_digests ;
 int pfree (TYPE_3__*) ;
 TYPE_2__* px_alloc (int) ;
 int px_openssl_initialized ;

int
px_find_digest(const char *name, PX_MD **res)
{
 const EVP_MD *md;
 EVP_MD_CTX *ctx;
 PX_MD *h;
 OSSLDigest *digest;

 if (!px_openssl_initialized)
 {
  px_openssl_initialized = 1;
  OpenSSL_add_all_algorithms();
 }

 if (!digest_resowner_callback_registered)
 {
  RegisterResourceReleaseCallback(digest_free_callback, ((void*)0));
  digest_resowner_callback_registered = 1;
 }

 md = EVP_get_digestbyname(name);
 if (md == ((void*)0))
  return PXE_NO_HASH;






 digest = MemoryContextAlloc(TopMemoryContext, sizeof(*digest));

 ctx = EVP_MD_CTX_create();
 if (!ctx)
 {
  pfree(digest);
  return -1;
 }
 if (EVP_DigestInit_ex(ctx, md, ((void*)0)) == 0)
 {
  pfree(digest);
  return -1;
 }

 digest->algo = md;
 digest->ctx = ctx;
 digest->owner = CurrentResourceOwner;
 digest->next = open_digests;
 digest->prev = ((void*)0);
 open_digests = digest;


 h = px_alloc(sizeof(*h));
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
