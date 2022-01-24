#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uLong ;
struct zip_cdir {int /*<<< orphan*/  size; int /*<<< orphan*/  offset; TYPE_1__* comment; } ;
struct zip {int /*<<< orphan*/  flags; int /*<<< orphan*/ * zp; } ;
struct TYPE_2__ {scalar_t__ raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  TORRENT_SIG ; 
 scalar_t__ TORRENT_SIG_LEN ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  ZIP_AFL_TORRENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC5(struct zip *za, const struct zip_cdir *cdir)
{
    uLong crc_got, crc_should;
    char buf[8+1];
    char *end;

    if (za->zp == NULL || cdir == NULL)
	return;

    if (FUNC1(cdir->comment) != TORRENT_SIG_LEN+8
	|| FUNC3((const char *)cdir->comment->raw, TORRENT_SIG, TORRENT_SIG_LEN) != 0)
	return;

    FUNC2(buf, cdir->comment->raw+TORRENT_SIG_LEN, 8);
    buf[8] = '\0';
    errno = 0;
    crc_should = FUNC4(buf, &end, 16);
    if ((crc_should == UINT_MAX && errno != 0) || (end && *end))
	return;

    if (FUNC0(za->zp, cdir->offset, cdir->size, &crc_got, NULL) < 0)
	return;

    if (crc_got == crc_should)
	za->flags |= ZIP_AFL_TORRENT;
}