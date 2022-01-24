#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_3__ {int /*<<< orphan*/  tif_clientdata; } ;
typedef  TYPE_1__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*,char const*) ; 
#define  TIFFReadDirEntryErrAlloc 134 
#define  TIFFReadDirEntryErrCount 133 
#define  TIFFReadDirEntryErrIo 132 
#define  TIFFReadDirEntryErrPsdif 131 
#define  TIFFReadDirEntryErrRange 130 
#define  TIFFReadDirEntryErrSizesan 129 
#define  TIFFReadDirEntryErrType 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(TIFF* tif, enum TIFFReadDirEntryErr err, const char* module, const char* tagname, int recover)
{
	if (!recover) {
		switch (err) {
			case TIFFReadDirEntryErrCount:
				FUNC0(tif->tif_clientdata, module,
					     "Incorrect count for \"%s\"",
					     tagname);
				break;
			case TIFFReadDirEntryErrType:
				FUNC0(tif->tif_clientdata, module,
					     "Incompatible type for \"%s\"",
					     tagname);
				break;
			case TIFFReadDirEntryErrIo:
				FUNC0(tif->tif_clientdata, module,
					     "IO error during reading of \"%s\"",
					     tagname);
				break;
			case TIFFReadDirEntryErrRange:
				FUNC0(tif->tif_clientdata, module,
					     "Incorrect value for \"%s\"",
					     tagname);
				break;
			case TIFFReadDirEntryErrPsdif:
				FUNC0(tif->tif_clientdata, module,
			"Cannot handle different values per sample for \"%s\"",
					     tagname);
				break;
			case TIFFReadDirEntryErrSizesan:
				FUNC0(tif->tif_clientdata, module,
				"Sanity check on size of \"%s\" value failed",
					     tagname);
				break;
			case TIFFReadDirEntryErrAlloc:
				FUNC0(tif->tif_clientdata, module,
					     "Out of memory reading of \"%s\"",
					     tagname);
				break;
			default:
				FUNC2(0);   /* we should never get here */
				break;
		}
	} else {
		switch (err) {
			case TIFFReadDirEntryErrCount:
				FUNC1(tif->tif_clientdata, module,
				"Incorrect count for \"%s\"; tag ignored",
					     tagname);
				break;
			case TIFFReadDirEntryErrType:
				FUNC1(tif->tif_clientdata, module,
				"Incompatible type for \"%s\"; tag ignored",
					       tagname);
				break;
			case TIFFReadDirEntryErrIo:
				FUNC1(tif->tif_clientdata, module,
			"IO error during reading of \"%s\"; tag ignored",
					       tagname);
				break;
			case TIFFReadDirEntryErrRange:
				FUNC1(tif->tif_clientdata, module,
				"Incorrect value for \"%s\"; tag ignored",
					       tagname);
				break;
			case TIFFReadDirEntryErrPsdif:
				FUNC1(tif->tif_clientdata, module,
	"Cannot handle different values per sample for \"%s\"; tag ignored",
					       tagname);
				break;
			case TIFFReadDirEntryErrSizesan:
				FUNC1(tif->tif_clientdata, module,
		"Sanity check on size of \"%s\" value failed; tag ignored",
					       tagname);
				break;
			case TIFFReadDirEntryErrAlloc:
				FUNC1(tif->tif_clientdata, module,
				"Out of memory reading of \"%s\"; tag ignored",
					       tagname);
				break;
			default:
				FUNC2(0);   /* we should never get here */
				break;
		}
	}
}