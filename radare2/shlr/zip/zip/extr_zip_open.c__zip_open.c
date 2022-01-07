
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_cdir {int comment; int nentry_alloc; int nentry; int entry; } ;
struct zip {int flags; int ch_flags; int * zp; int comment_orig; int nentry_alloc; int nentry; int entry; } ;
typedef scalar_t__ off_t ;
typedef int FILE ;


 int SEEK_END ;
 int ZIP_ER_SEEK ;
 struct zip* _zip_allocate_new (char const*,unsigned int,int*) ;
 int _zip_cdir_free (struct zip_cdir*) ;
 int _zip_check_torrentzip (struct zip*,struct zip_cdir*) ;
 struct zip_cdir* _zip_find_central_dir (int *,unsigned int,int*,scalar_t__) ;
 int fclose (int *) ;
 int free (struct zip_cdir*) ;
 scalar_t__ fseeko (int *,int ,int ) ;
 scalar_t__ ftello (int *) ;

struct zip *
_zip_open(const char *fn, FILE *fp, unsigned int flags, int *zep)
{
    struct zip *za;
    struct zip_cdir *cdir;
    off_t len;

    if (fseeko(fp, 0, SEEK_END) < 0) {
 *zep = ZIP_ER_SEEK;
 return ((void*)0);
    }
    len = ftello(fp);


    if (len == 0) {
 if ((za=_zip_allocate_new(fn, flags, zep)) == ((void*)0))
     fclose(fp);
 else
     za->zp = fp;
 return za;
    }

    cdir = _zip_find_central_dir(fp, flags, zep, len);
    if (cdir == ((void*)0)) {
 fclose(fp);
 return ((void*)0);
    }

    if ((za=_zip_allocate_new(fn, flags, zep)) == ((void*)0)) {
 _zip_cdir_free(cdir);
 fclose(fp);
 return ((void*)0);
    }

    za->entry = cdir->entry;
    za->nentry = cdir->nentry;
    za->nentry_alloc = cdir->nentry_alloc;
    za->comment_orig = cdir->comment;

    za->zp = fp;

    _zip_check_torrentzip(za, cdir);

    za->ch_flags = za->flags;

    free(cdir);

    return za;
}
