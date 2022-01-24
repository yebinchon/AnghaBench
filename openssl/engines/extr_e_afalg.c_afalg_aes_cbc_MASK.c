#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  const* _hidden; int /*<<< orphan*/  key_size; } ;
typedef  TYPE_1__ cbc_handles ;
typedef  int /*<<< orphan*/  afalg_ctx ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  AES_IV_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int EVP_CIPH_CBC_MODE ; 
 int EVP_CIPH_FLAG_DEFAULT_ASN1 ; 
 int /*<<< orphan*/  afalg_cipher_cleanup ; 
 int /*<<< orphan*/  afalg_cipher_init ; 
 int /*<<< orphan*/  afalg_do_cipher ; 
 TYPE_1__* FUNC8 (int) ; 

__attribute__((used)) static const EVP_CIPHER *FUNC9(int nid)
{
    cbc_handles *cipher_handle = FUNC8(nid);
    if (cipher_handle->_hidden == NULL
        && ((cipher_handle->_hidden =
         FUNC1(nid,
                             AES_BLOCK_SIZE,
                             cipher_handle->key_size)) == NULL
        || !FUNC7(cipher_handle->_hidden,
                                          AES_IV_LEN)
        || !FUNC4(cipher_handle->_hidden,
                                      EVP_CIPH_CBC_MODE |
                                      EVP_CIPH_FLAG_DEFAULT_ASN1)
        || !FUNC6(cipher_handle->_hidden,
                                     afalg_cipher_init)
        || !FUNC3(cipher_handle->_hidden,
                                          afalg_do_cipher)
        || !FUNC2(cipher_handle->_hidden,
                                        afalg_cipher_cleanup)
        || !FUNC5(cipher_handle->_hidden,
                                              sizeof(afalg_ctx)))) {
        FUNC0(cipher_handle->_hidden);
        cipher_handle->_hidden= NULL;
    }
    return cipher_handle->_hidden;
}