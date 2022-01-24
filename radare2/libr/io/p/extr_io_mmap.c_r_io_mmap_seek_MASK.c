#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_6__ {scalar_t__ off; } ;
struct TYPE_5__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ RIOMMapFileObj ;
typedef  TYPE_2__ RIO ;

/* Variables and functions */
 int /*<<< orphan*/  R_BUF_SET ; 
#define  SEEK_CUR 130 
#define  SEEK_END 129 
#define  SEEK_SET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ut64 FUNC3(RIO *io, RIOMMapFileObj *mmo, ut64 offset, int whence) {
	ut64 seek_val = FUNC2 (mmo->buf);
	switch (whence) {
	case SEEK_SET:
		seek_val = (FUNC1 (mmo->buf) < offset)? FUNC1 (mmo->buf): offset;
		FUNC0 (mmo->buf, io->off = seek_val, R_BUF_SET);
		return seek_val;
	case SEEK_CUR:
		seek_val = (FUNC1 (mmo->buf) < (offset + FUNC2 (mmo->buf)))? FUNC1 (mmo->buf): offset + FUNC2 (mmo->buf);
		FUNC0 (mmo->buf, io->off = seek_val, R_BUF_SET);
		return seek_val;
	case SEEK_END:
		seek_val = FUNC1 (mmo->buf);
		FUNC0 (mmo->buf, io->off = seek_val, R_BUF_SET);
		return seek_val;
	}
	return seek_val;
}