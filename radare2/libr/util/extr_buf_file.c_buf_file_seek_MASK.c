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
struct buf_file_priv {int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  st64 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
#define  R_BUF_CUR 130 
#define  R_BUF_END 129 
#define  R_BUF_SET 128 
 int SEEK_CUR ; 
 int SEEK_END ; 
 int SEEK_SET ; 
 struct buf_file_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static st64 FUNC2(RBuffer *b, st64 addr, int whence) {
	struct buf_file_priv *priv = FUNC0 (b);
	switch (whence) {
	case R_BUF_CUR: whence = SEEK_CUR; break;
	case R_BUF_SET: whence = SEEK_SET; break;
	case R_BUF_END: whence = SEEK_END; break;
	}
	return FUNC1 (priv->fd, addr, whence);
}