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
struct buf_ref_priv {int dummy; } ;
struct TYPE_3__ {scalar_t__ priv; } ;
typedef  TYPE_1__ RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf_ref_priv*) ; 

__attribute__((used)) static inline struct buf_ref_priv *FUNC1(RBuffer *b) {
	struct buf_ref_priv *priv = (struct buf_ref_priv *)b->priv;
	FUNC0 (priv);
	return priv;
}