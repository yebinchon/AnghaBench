
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct os_globent {int path; int directory; } ;
struct dstr {int array; int member_0; } ;
struct TYPE_4__ {int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;


 int dstr_cat_dstr (struct dstr*,struct dstr*) ;
 int dstr_copy (struct dstr*,char const*) ;
 int dstr_free (struct dstr*) ;
 int dstr_from_wcs (struct dstr*,int ) ;
 int dstr_resize (struct dstr*,char*) ;
 int is_dir (TYPE_1__*) ;
 char* strrchr (int,char) ;

__attribute__((used)) static void make_globent(struct os_globent *ent, WIN32_FIND_DATA *wfd,
    const char *pattern)
{
 struct dstr name = {0};
 struct dstr path = {0};
 char *slash;

 dstr_from_wcs(&name, wfd->cFileName);
 dstr_copy(&path, pattern);
 slash = strrchr(path.array, '/');
 if (slash)
  dstr_resize(&path, slash + 1 - path.array);
 else
  dstr_free(&path);

 dstr_cat_dstr(&path, &name);
 ent->path = path.array;
 ent->directory = is_dir(wfd);

 dstr_free(&name);
}
