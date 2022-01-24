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
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 struct buf_file_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ut64 FUNC2(RBuffer *b) {
	struct buf_file_priv *priv = FUNC0 (b);
	int pos = FUNC1 (priv->fd, 0, SEEK_CUR);
	int res = FUNC1 (priv->fd, 0, SEEK_END);
	FUNC1 (priv->fd, pos, SEEK_SET);
	return (ut64)res;
}