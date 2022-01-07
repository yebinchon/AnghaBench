
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint64_t ;
typedef int zip_int64_t ;
struct zip_stat {int dummy; } ;
struct zip_source {int dummy; } ;
struct zip {int error; } ;
struct read_file {int len; int closep; int st; int * fname; int off; int * f; } ;
typedef int FILE ;


 int ZIP_ER_INVAL ;
 int ZIP_ER_MEMORY ;
 int _zip_error_set (int *,int ,int ) ;
 int free (struct read_file*) ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,struct zip_stat const*,int) ;
 int read_file ;
 int * strdup (char const*) ;
 struct zip_source* zip_source_function (struct zip*,int ,struct read_file*) ;
 int zip_stat_init (int *) ;

struct zip_source *
_zip_source_file_or_p(struct zip *za, const char *fname, FILE *file,
        zip_uint64_t start, zip_int64_t len, int closep,
        const struct zip_stat *st)
{
    struct read_file *f;
    struct zip_source *zs;

    if (file == ((void*)0) && fname == ((void*)0)) {
 _zip_error_set(&za->error, ZIP_ER_INVAL, 0);
 return ((void*)0);
    }

    if ((f=(struct read_file *)malloc(sizeof(struct read_file))) == ((void*)0)) {
 _zip_error_set(&za->error, ZIP_ER_MEMORY, 0);
 return ((void*)0);
    }

    f->fname = ((void*)0);
    if (fname) {
 if ((f->fname=strdup(fname)) == ((void*)0)) {
     _zip_error_set(&za->error, ZIP_ER_MEMORY, 0);
     free(f);
     return ((void*)0);
 }
    }
    f->f = file;
    f->off = start;
    f->len = (len ? len : -1);
    f->closep = f->fname ? 1 : closep;
    if (st)
 memcpy(&f->st, st, sizeof(f->st));
    else
 zip_stat_init(&f->st);

    if ((zs=zip_source_function(za, read_file, f)) == ((void*)0)) {
 free(f);
 return ((void*)0);
    }

    return zs;
}
