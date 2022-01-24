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
typedef  int /*<<< orphan*/  ut64 ;
struct buf_sparse_priv {int offset; int /*<<< orphan*/  sparse; } ;
typedef  int st64 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
#define  R_BUF_CUR 130 
#define  R_BUF_END 129 
#define  R_BUF_SET 128 
 struct buf_sparse_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static st64 FUNC3(RBuffer *b, st64 addr, int whence) {
	struct buf_sparse_priv *priv = FUNC0 (b);
	ut64 max;
	if (addr < 0 && (-addr) > (st64)priv->offset) {
		return -1;
	}

	switch (whence) {
	case R_BUF_CUR:
		priv->offset += addr;
		break;
	case R_BUF_SET:
		priv->offset = addr;
		break;
	case R_BUF_END:
		if (!FUNC2 (priv->sparse, &max)) {
			max = 0;
		}
		priv->offset = max + addr;
		break;
	default:
		FUNC1 ();
		return -1;
	}
	return priv->offset;
}