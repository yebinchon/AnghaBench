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
typedef  int /*<<< orphan*/  u32 ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct md5_hmac_ctx {int dbn; } ;

/* Variables and functions */
 int MD5_HMAC_DBN_TEMP_SIZE ; 
 struct md5_hmac_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * temp ; 

__attribute__((used)) static void FUNC3(struct shash_desc *desc, u32 const *in)
{
    struct md5_hmac_ctx *mctx = FUNC0(desc->tfm);

    FUNC1(&temp[mctx->dbn<<4], in, 64); //dbn workaround
    mctx->dbn += 1;
    
    if ( (mctx->dbn<<4) > MD5_HMAC_DBN_TEMP_SIZE )
    {
        FUNC2("MD5_HMAC_DBN_TEMP_SIZE exceeded\n");
    }

}