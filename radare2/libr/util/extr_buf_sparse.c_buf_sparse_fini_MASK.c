#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct buf_sparse_priv {int /*<<< orphan*/  sparse; } ;
struct TYPE_4__ {int /*<<< orphan*/  priv; } ;
typedef  TYPE_1__ RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct buf_sparse_priv* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(RBuffer *b) {
	struct buf_sparse_priv *priv = FUNC1 (b);
	FUNC2 (priv->sparse);
	FUNC0 (b->priv);
	return true;
}