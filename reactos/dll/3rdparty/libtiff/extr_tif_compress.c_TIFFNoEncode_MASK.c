#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  td_compression; } ;
struct TYPE_8__ {TYPE_1__ tif_dir; int /*<<< orphan*/  tif_name; int /*<<< orphan*/  tif_clientdata; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ TIFFCodec ;
typedef  TYPE_3__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(TIFF* tif, const char* method)
{
	const TIFFCodec* c = FUNC1(tif->tif_dir.td_compression);

	if (c) {
		FUNC0(tif->tif_clientdata, tif->tif_name,
			     "%s %s encoding is not implemented",
			     c->name, method);
	} else {
		FUNC0(tif->tif_clientdata, tif->tif_name,
			"Compression scheme %u %s encoding is not implemented",
			     tif->tif_dir.td_compression, method);
	}
	return (-1);
}