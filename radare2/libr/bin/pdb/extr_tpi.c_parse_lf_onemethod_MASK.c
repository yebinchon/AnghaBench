#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ name; } ;
struct TYPE_9__ {TYPE_5__ str_data; scalar_t__ val; } ;
struct TYPE_7__ {scalar_t__ mprop; } ;
struct TYPE_8__ {TYPE_1__ bits; int /*<<< orphan*/  fldattr; } ;
struct TYPE_10__ {int /*<<< orphan*/  pad; TYPE_3__ val; TYPE_2__ fldattr; scalar_t__ index; } ;
typedef  TYPE_4__ SLF_ONEMETHOD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,scalar_t__,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ eMTintro ; 
 scalar_t__ eMTpureintro ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,unsigned char*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  ut16 ; 
 int /*<<< orphan*/  ut32 ; 
 int /*<<< orphan*/  ut8 ; 

__attribute__((used)) static int FUNC6(SLF_ONEMETHOD *lf_onemethod, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len)
{
	int read_bytes_before = *read_bytes, tmp_before_read_bytes = 0;

	lf_onemethod->val.str_data.name = 0;
	lf_onemethod->val.val = 0;

	FUNC2(*read_bytes, len, lf_onemethod->fldattr.fldattr, leaf_data, ut16);
	FUNC3(*read_bytes, len, lf_onemethod->index, leaf_data, ut32);

	lf_onemethod->fldattr.fldattr = FUNC4(lf_onemethod->fldattr.fldattr);

	if((lf_onemethod->fldattr.bits.mprop == eMTintro) ||
		(lf_onemethod->fldattr.bits.mprop == eMTpureintro)) {
		FUNC3(*read_bytes, len, lf_onemethod->val.val, leaf_data, ut32);
	}

	tmp_before_read_bytes = *read_bytes;
	FUNC5(&(lf_onemethod->val.str_data), leaf_data, read_bytes, len);
	leaf_data += (*read_bytes - tmp_before_read_bytes);

	FUNC1(*read_bytes, len, lf_onemethod->pad, leaf_data, ut8);
	FUNC0(lf_onemethod->pad, *read_bytes, leaf_data, len);

	return (*read_bytes - read_bytes_before);
}