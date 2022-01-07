
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_error {int dummy; } ;
struct zip {unsigned int open_flags; int * zn; } ;


 int ZIP_ER_MEMORY ;
 struct zip* _zip_new (struct zip_error*) ;
 int set_error (int*,struct zip_error*,int ) ;
 int * strdup (char const*) ;
 int zip_discard (struct zip*) ;

__attribute__((used)) static struct zip *
_zip_allocate_new(const char *fn, unsigned int flags, int *zep)
{
    struct zip *za;
    struct zip_error error;

    if ((za=_zip_new(&error)) == ((void*)0)) {
 set_error(zep, &error, 0);
 return ((void*)0);
    }

    if (fn == ((void*)0))
 za->zn = ((void*)0);
    else {
 za->zn = strdup(fn);
 if (!za->zn) {
     zip_discard(za);
     set_error(zep, ((void*)0), ZIP_ER_MEMORY);
     return ((void*)0);
 }
    }
    za->open_flags = flags;
    return za;
}
