
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* f; } ;
struct TYPE_5__ {int (* fromstr ) (char*,void*,char**,TYPE_2__*) ;} ;
typedef TYPE_2__ PyArray_Descr ;


 scalar_t__ string_is_fully_read (char*,char const*) ;
 int stub1 (char*,void*,char**,TYPE_2__*) ;

__attribute__((used)) static int
fromstr_next_element(char **s, void *dptr, PyArray_Descr *dtype,
                     const char *end)
{
    char *e = *s;
    int r = dtype->f->fromstr(*s, dptr, &e, dtype);





    if (*s == e || r < 0) {

        if (string_is_fully_read(*s, end)) {
            return -1;
        }
        return -2;
    }
    *s = e;
    if (end != ((void*)0) && *s > end) {

        return -1;
    }
    return 0;
}
