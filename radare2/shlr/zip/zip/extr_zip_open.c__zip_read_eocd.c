
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zip_uint64_t ;
struct zip_error {int dummy; } ;
struct zip_cdir {void* offset; void* size; } ;
typedef void* off_t ;


 int EFBIG ;
 int EOCDLEN ;
 unsigned int ZIP_CHECKCONS ;
 int ZIP_ER_INCONS ;
 int ZIP_ER_NOZIP ;
 int ZIP_ER_SEEK ;
 scalar_t__ ZIP_OFF_MAX ;
 struct zip_cdir* _zip_cdir_new (scalar_t__,struct zip_error*) ;
 int _zip_error_set (struct zip_error*,int ,int ) ;
 scalar_t__ _zip_read2 (unsigned char const**) ;
 scalar_t__ _zip_read4 (unsigned char const**) ;

__attribute__((used)) static struct zip_cdir *
_zip_read_eocd(const unsigned char *eocd, const unsigned char *buf, off_t buf_offset, size_t buflen,
        unsigned int flags, struct zip_error *error)
{
    struct zip_cdir *cd;
    const unsigned char *cdp;
    zip_uint64_t i, nentry, size, offset;

    if (eocd+EOCDLEN > buf+buflen) {
 _zip_error_set(error, ZIP_ER_INCONS, 0);
 return ((void*)0);
    }

    cdp = eocd + 8;


    i = _zip_read2(&cdp);

    nentry = _zip_read2(&cdp);

    if (nentry != i) {
 _zip_error_set(error, ZIP_ER_NOZIP, 0);
 return ((void*)0);
    }

    size = _zip_read4(&cdp);
    offset = _zip_read4(&cdp);

    if (size > ZIP_OFF_MAX || offset > ZIP_OFF_MAX || offset+size > ZIP_OFF_MAX) {
        _zip_error_set(error, ZIP_ER_SEEK, EFBIG);
        return ((void*)0);
    }

    if (offset+size > (zip_uint64_t)(buf_offset + (eocd-buf))) {

 _zip_error_set(error, ZIP_ER_INCONS, 0);
 return ((void*)0);
    }

    if ((flags & ZIP_CHECKCONS) && offset+size != (zip_uint64_t)(buf_offset + (eocd-buf))) {
 _zip_error_set(error, ZIP_ER_INCONS, 0);
 return ((void*)0);
    }

    if ((cd=_zip_cdir_new(nentry, error)) == ((void*)0))
 return ((void*)0);

    cd->size = (off_t)size;
    cd->offset = (off_t)offset;

    return cd;
}
