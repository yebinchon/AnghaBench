
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_file {int * src; scalar_t__ eof; int error; struct zip* za; } ;
struct zip {scalar_t__ nfile; scalar_t__ nfile_alloc; struct zip_file** file; int error; } ;


 int ZIP_ER_MEMORY ;
 int _zip_error_init (int *) ;
 int _zip_error_set (int *,int ,int ) ;
 int free (struct zip_file*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ realloc (struct zip_file**,unsigned int) ;

__attribute__((used)) static struct zip_file *
_zip_file_new(struct zip *za)
{
    struct zip_file *zf, **file;

    if ((zf=(struct zip_file *)malloc(sizeof(struct zip_file))) == ((void*)0)) {
 _zip_error_set(&za->error, ZIP_ER_MEMORY, 0);
 return ((void*)0);
    }

    if (za->nfile+1 >= za->nfile_alloc) {
 unsigned int n;
 n = za->nfile_alloc + 10;
 file = (struct zip_file **)realloc(za->file,
        n*sizeof(struct zip_file *));
 if (file == ((void*)0)) {
     _zip_error_set(&za->error, ZIP_ER_MEMORY, 0);
     free(zf);
     return ((void*)0);
 }
 za->nfile_alloc = n;
 za->file = file;
    }

    za->file[za->nfile++] = zf;

    zf->za = za;
    _zip_error_init(&zf->error);
    zf->eof = 0;
    zf->src = ((void*)0);

    return zf;
}
