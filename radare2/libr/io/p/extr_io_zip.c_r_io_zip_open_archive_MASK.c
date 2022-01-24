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
typedef  int /*<<< orphan*/  ut32 ;
struct zip {int dummy; } ;

/* Variables and functions */
 int ZIP_ER_INCONS ; 
 int ZIP_ER_INVAL ; 
 int ZIP_ER_NOENT ; 
 int ZIP_ER_NOZIP ; 
 int ZIP_ER_OPEN ; 
 int ZIP_ER_READ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct zip* FUNC1 (char const*,int /*<<< orphan*/ ,int*) ; 

struct zip *FUNC2(const char *archivename, ut32 perm, int mode, int rw) {
	struct zip * zipArch = NULL;
	int zip_errorp;
	if (!archivename) {
		return NULL;
	}
	if ((zipArch = FUNC1 (archivename, perm, &zip_errorp))) {
		return zipArch;
	}
	if (zip_errorp == ZIP_ER_INVAL) {
		FUNC0 ("ZIP File Error: Invalid file name (NULL).\n");
	} else if (zip_errorp == ZIP_ER_OPEN) {
		FUNC0 ("ZIP File Error: File could not be opened file name.\n");
	} else if (zip_errorp == ZIP_ER_NOENT) {
		FUNC0 ("ZIP File Error: File does not exist.\n");
	} else if (zip_errorp == ZIP_ER_READ) {
		FUNC0 ("ZIP File Error: Read error occurred.\n");
	} else if (zip_errorp == ZIP_ER_NOZIP) {
		FUNC0 ("ZIP File Error: File is not a valid ZIP archive.\n");
	} else if (zip_errorp == ZIP_ER_INCONS) {
		FUNC0 ("ZIP File Error: ZIP file had some inconsistencies archive.\n");
	} else {
		FUNC0 ("ZIP File Error: Something bad happened, get your debug on.\n");
	}
	return NULL;
}