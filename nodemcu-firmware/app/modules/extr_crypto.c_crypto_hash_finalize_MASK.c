#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  ctx; scalar_t__ k_opad; TYPE_2__* mech_info; } ;
typedef  TYPE_1__ digest_user_datum_t ;
struct TYPE_5__ {int digest_size; int /*<<< orphan*/  (* finalize ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ digest_mech_info_t ;
typedef  int /*<<< orphan*/  digest ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__ const*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (lua_State *L)
{
  FUNC0("enter crypto_hash_update.\n");
  digest_user_datum_t *dudat;
  size_t sl;

  dudat = (digest_user_datum_t *)FUNC2(L, 1, "crypto.hash");

  const digest_mech_info_t *mi = dudat->mech_info;

  uint8_t digest[mi->digest_size]; // Allocate as local
  if (dudat->k_opad)
    FUNC1 (dudat->ctx, mi, dudat->k_opad, digest);
  else
    mi->finalize (digest, dudat->ctx);

  FUNC3 (L, digest, sizeof (digest));
  return 1;
}