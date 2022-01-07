
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_int64_t ;
struct zip_error {int dummy; } ;
struct zip_cdir {int dummy; } ;
typedef size_t off_t ;
typedef int FILE ;


 size_t CDBUFSIZE ;
 scalar_t__ EFBIG ;
 int EOCD64LOCLEN ;
 int EOCDLEN ;
 scalar_t__ EOCD_MAGIC ;
 int SEEK_END ;
 unsigned int ZIP_CHECKCONS ;
 int ZIP_ER_MEMORY ;
 int ZIP_ER_NOZIP ;
 int ZIP_ER_READ ;
 int ZIP_ER_SEEK ;
 int _zip_cdir_free (struct zip_cdir*) ;
 int _zip_checkcons (int *,struct zip_cdir*,struct zip_error*) ;
 int _zip_error_set (struct zip_error*,int ,int ) ;
 unsigned char* _zip_memmem (unsigned char*,size_t,unsigned char const*,int) ;
 struct zip_cdir* _zip_readcdir (int *,size_t,unsigned char*,unsigned char*,size_t,unsigned int,struct zip_error*) ;
 int clearerr (int *) ;
 scalar_t__ errno ;
 scalar_t__ ferror (int *) ;
 size_t fread (unsigned char*,int,size_t,int *) ;
 int free (unsigned char*) ;
 int fseeko (int *,size_t,int ) ;
 size_t ftello (int *) ;
 scalar_t__ malloc (size_t) ;
 int set_error (int*,struct zip_error*,int ) ;

__attribute__((used)) static struct zip_cdir *
_zip_find_central_dir(FILE *fp, unsigned int flags, int *zep, off_t len)
{
    struct zip_cdir *cdir, *cdirnew;
    unsigned char *buf, *match;
    off_t buf_offset;
    size_t buflen;
    zip_int64_t a, i;
    zip_int64_t best;
    struct zip_error zerr;

    i = fseeko(fp, -(len < CDBUFSIZE ? len : CDBUFSIZE), SEEK_END);
    if (i == -1 && errno != EFBIG) {

 set_error(zep, ((void*)0), ZIP_ER_SEEK);
 return ((void*)0);
    }
    buf_offset = ftello(fp);


    if ((buf=(unsigned char *)malloc(CDBUFSIZE)) == ((void*)0)) {
 set_error(zep, ((void*)0), ZIP_ER_MEMORY);
 return ((void*)0);
    }

    clearerr(fp);
    buflen = fread(buf, 1, CDBUFSIZE, fp);

    if (ferror(fp)) {
 set_error(zep, ((void*)0), ZIP_ER_READ);
 free(buf);
 return ((void*)0);
    }

    best = -1;
    cdir = ((void*)0);
    match = buf+ (buflen < CDBUFSIZE ? 0 : EOCD64LOCLEN);
    _zip_error_set(&zerr, ZIP_ER_NOZIP, 0);

    while ((match=_zip_memmem(match, buflen-(size_t)(match-buf)-(EOCDLEN-4),
         (const unsigned char *)EOCD_MAGIC, 4))!=((void*)0)) {


 match++;
 if ((cdirnew=_zip_readcdir(fp, buf_offset, buf, match-1, buflen, flags,
       &zerr)) == ((void*)0))
     continue;

 if (cdir) {
     if (best <= 0)
  best = _zip_checkcons(fp, cdir, &zerr);
     a = _zip_checkcons(fp, cdirnew, &zerr);
     if (best < a) {
  _zip_cdir_free(cdir);
  cdir = cdirnew;
  best = a;
     }
     else
  _zip_cdir_free(cdirnew);
 }
 else {
     cdir = cdirnew;
     if (flags & ZIP_CHECKCONS)
  best = _zip_checkcons(fp, cdir, &zerr);
     else
  best = 0;
 }
 cdirnew = ((void*)0);
    }

    free(buf);

    if (best < 0) {
 set_error(zep, &zerr, 0);
 _zip_cdir_free(cdir);
 return ((void*)0);
    }

    return cdir;
}
