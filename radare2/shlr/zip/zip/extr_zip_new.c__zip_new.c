
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_error {int dummy; } ;
struct zip {int * tempdir; int * file; scalar_t__ nfile_alloc; scalar_t__ nfile; int * entry; scalar_t__ nentry_alloc; scalar_t__ nentry; scalar_t__ comment_changed; int * comment_changes; int comment_orig; int * default_password; scalar_t__ ch_flags; scalar_t__ flags; int error; scalar_t__ open_flags; int * zp; int * zn; } ;


 int ZIP_ER_MEMORY ;
 int _zip_error_init (int *) ;
 int _zip_error_set (struct zip_error*,int ,int ) ;
 scalar_t__ malloc (int) ;

struct zip *
_zip_new(struct zip_error *error)
{
    struct zip *za;

    za = (struct zip *)malloc(sizeof(struct zip));
    if (!za) {
 _zip_error_set(error, ZIP_ER_MEMORY, 0);
 return ((void*)0);
    }

    za->zn = ((void*)0);
    za->zp = ((void*)0);
    za->open_flags = 0;
    _zip_error_init(&za->error);
    za->flags = za->ch_flags = 0;
    za->default_password = ((void*)0);
    za->comment_orig = za->comment_changes = ((void*)0);
    za->comment_changed = 0;
    za->nentry = za->nentry_alloc = 0;
    za->entry = ((void*)0);
    za->nfile = za->nfile_alloc = 0;
    za->file = ((void*)0);
    za->tempdir = ((void*)0);

    return za;
}
