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
typedef  scalar_t__ ut64 ;
struct buf_bytes_priv {scalar_t__ offset; scalar_t__ length; scalar_t__ buf; } ;
typedef  int st64 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 struct buf_bytes_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/  const*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static st64 FUNC3(RBuffer *b, const ut8 *buf, ut64 len) {
	struct buf_bytes_priv *priv = FUNC0 (b);
	if (priv->offset > priv->length || priv->offset + len >= priv->length) {
		bool r = FUNC2 (b, priv->offset + len);
		if (!r) {
			return -1;
		}
	}
	FUNC1 (priv->buf + priv->offset, buf, len);
	priv->offset += len;
	return len;
}