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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  TIFFDirEntry ;
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TIFF_ASCII ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 count, char* value)
{
	FUNC1(sizeof(char)==1);
	return(FUNC0(tif,ndir,dir,tag,TIFF_ASCII,count,count,value));
}