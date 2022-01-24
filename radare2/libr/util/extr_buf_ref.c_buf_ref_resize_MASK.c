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
typedef  scalar_t__ ut64 ;
struct buf_ref_priv {scalar_t__ base; int /*<<< orphan*/  size; int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 struct buf_ref_priv* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(RBuffer *b, ut64 newsize) {
	struct buf_ref_priv *priv = FUNC1 (b);
	ut64 parent_sz = FUNC2 (priv->parent);
	priv->size = FUNC0 (parent_sz - priv->base, newsize);
	return true;
}