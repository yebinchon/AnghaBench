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
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_3__ {int /*<<< orphan*/ * pub_key; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  int /*<<< orphan*/  PGP_PubKey ;
typedef  TYPE_1__ PGP_Context ;
typedef  int /*<<< orphan*/  MBuf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(PGP_Context *ctx, MBuf *keypkt,
			   const uint8 *key, int key_len, int pubtype)
{
	int			res;
	PullFilter *src;
	PGP_PubKey *pk = NULL;

	res = FUNC1(&src, keypkt);
	if (res < 0)
		return res;

	res = FUNC0(src, &pk, key, key_len, pubtype);
	FUNC2(src);

	if (res >= 0)
		ctx->pub_key = pk;

	return res < 0 ? res : 0;
}