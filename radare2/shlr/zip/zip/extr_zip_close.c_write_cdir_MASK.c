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
typedef  int /*<<< orphan*/  zip_uint64_t ;
typedef  int /*<<< orphan*/  zip_int64_t ;
typedef  scalar_t__ uLong ;
struct zip_filelist {int dummy; } ;
struct zip {int /*<<< orphan*/  error; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int TORRENT_CRC_LEN ; 
 int /*<<< orphan*/  ZIP_AFL_TORRENT ; 
 int /*<<< orphan*/  ZIP_ER_SEEK ; 
 int /*<<< orphan*/  ZIP_ER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct zip*,struct zip_filelist const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,long) ; 
 scalar_t__ FUNC7 (struct zip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct zip *za, const struct zip_filelist *filelist, zip_uint64_t survivors, FILE *out)
{
    off_t cd_start, end;
    zip_int64_t size;
    uLong crc;
    char buf[TORRENT_CRC_LEN+1];

    cd_start = FUNC4(out);
	if (cd_start < 0)
		return -1;

    if ((size=FUNC0(za, filelist, survivors, out)) < 0)
	return -1;
    
    end = FUNC4(out);

    if (FUNC7(za, ZIP_AFL_TORRENT, 0) == 0)
	return 0;


    /* fix up torrentzip comment */

    if (FUNC2(out, cd_start, size, &crc, &za->error) < 0)
	return -1;

    FUNC6(buf, sizeof(buf), "%08lX", (long)crc);

    if (FUNC3(out, end-TORRENT_CRC_LEN, SEEK_SET) < 0) {
	FUNC1(&za->error, ZIP_ER_SEEK, errno);
	return -1;
    }

    if (FUNC5(buf, TORRENT_CRC_LEN, 1, out) != 1) {
	FUNC1(&za->error, ZIP_ER_WRITE, errno);
	return -1;
    }

    return 0;
}