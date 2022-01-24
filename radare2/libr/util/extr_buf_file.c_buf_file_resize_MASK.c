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
struct buf_file_priv {int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 struct buf_file_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(RBuffer *b, ut64 newsize) {
	struct buf_file_priv *priv = FUNC0 (b);
	return FUNC1 (priv->fd, newsize) >= 0;
}