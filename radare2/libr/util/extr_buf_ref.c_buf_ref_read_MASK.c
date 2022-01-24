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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
struct buf_ref_priv {scalar_t__ size; scalar_t__ cur; scalar_t__ base; int /*<<< orphan*/  parent; } ;
typedef  int st64 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct buf_ref_priv* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static st64 FUNC3(RBuffer *b, ut8 *buf, ut64 len) {
	struct buf_ref_priv *priv = FUNC1 (b);
	if (priv->size < priv->cur) {
		return -1;
	}
	len = FUNC0 (len, priv->size - priv->cur);
	st64 r = FUNC2 (priv->parent, priv->base + priv->cur, buf, len);
	if (r < 0) {
		return r;
	}
	priv->cur += r;
	return r;
}