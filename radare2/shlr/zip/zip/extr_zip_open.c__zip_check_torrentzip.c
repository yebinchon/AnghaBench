
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uLong ;
struct zip_cdir {int size; int offset; TYPE_1__* comment; } ;
struct zip {int flags; int * zp; } ;
struct TYPE_2__ {scalar_t__ raw; } ;


 int TORRENT_SIG ;
 scalar_t__ TORRENT_SIG_LEN ;
 scalar_t__ UINT_MAX ;
 int ZIP_AFL_TORRENT ;
 scalar_t__ _zip_filerange_crc (int *,int ,int ,scalar_t__*,int *) ;
 scalar_t__ _zip_string_length (TYPE_1__*) ;
 scalar_t__ errno ;
 int memcpy (char*,scalar_t__,int) ;
 scalar_t__ strncmp (char const*,int ,scalar_t__) ;
 scalar_t__ strtoul (char*,char**,int) ;

__attribute__((used)) static void
_zip_check_torrentzip(struct zip *za, const struct zip_cdir *cdir)
{
    uLong crc_got, crc_should;
    char buf[8+1];
    char *end;

    if (za->zp == ((void*)0) || cdir == ((void*)0))
 return;

    if (_zip_string_length(cdir->comment) != TORRENT_SIG_LEN+8
 || strncmp((const char *)cdir->comment->raw, TORRENT_SIG, TORRENT_SIG_LEN) != 0)
 return;

    memcpy(buf, cdir->comment->raw+TORRENT_SIG_LEN, 8);
    buf[8] = '\0';
    errno = 0;
    crc_should = strtoul(buf, &end, 16);
    if ((crc_should == UINT_MAX && errno != 0) || (end && *end))
 return;

    if (_zip_filerange_crc(za->zp, cdir->offset, cdir->size, &crc_got, ((void*)0)) < 0)
 return;

    if (crc_got == crc_should)
 za->flags |= ZIP_AFL_TORRENT;
}
