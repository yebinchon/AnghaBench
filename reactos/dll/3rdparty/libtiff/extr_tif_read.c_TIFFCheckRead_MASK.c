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
struct TYPE_4__ {scalar_t__ tif_mode; int /*<<< orphan*/  tif_name; int /*<<< orphan*/  tif_clientdata; } ;
typedef  TYPE_1__ TIFF ;

/* Variables and functions */
 scalar_t__ O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC2(TIFF* tif, int tiles)
{
	if (tif->tif_mode == O_WRONLY) {
		FUNC0(tif->tif_clientdata, tif->tif_name, "File not open for reading");
		return (0);
	}
	if (tiles ^ FUNC1(tif)) {
		FUNC0(tif->tif_clientdata, tif->tif_name, tiles ?
		    "Can not read tiles from a stripped image" :
		    "Can not read scanlines from a tiled image");
		return (0);
	}
	return (1);
}