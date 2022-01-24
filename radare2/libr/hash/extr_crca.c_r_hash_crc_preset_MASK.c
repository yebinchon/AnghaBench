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
typedef  int /*<<< orphan*/  utcrc ;
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut32 ;
typedef  enum CRC_PRESETS { ____Placeholder_CRC_PRESETS } CRC_PRESETS ;
typedef  int /*<<< orphan*/  R_CRC_CTX ;

/* Variables and functions */
 int CRC_PRESET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

utcrc FUNC3 (const ut8 *data, ut32 size, enum CRC_PRESETS preset) {
	if (!data || !size || preset >= CRC_PRESET_SIZE) {
		return 0;
	}
	utcrc r;
	R_CRC_CTX crcctx;
	FUNC1 (&crcctx, preset);
	FUNC2 (&crcctx, data, size);
	FUNC0 (&crcctx, &r);
	return r;
}