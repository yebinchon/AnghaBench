
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; int allocated; char* s; } ;
typedef TYPE_1__ _tmp_string_t ;


 int INIT_SIZE ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_MemoryError ;
 char* realloc (char*,size_t) ;

__attribute__((used)) static int
_append_char(_tmp_string_t *s, char c)
{
    if (s->pos >= s->allocated) {
        char *p;
        size_t to_alloc = (s->allocated == 0) ? INIT_SIZE : (2 * s->allocated);

        p = realloc(s->s, to_alloc);
        if (p == ((void*)0)) {
            PyErr_SetString(PyExc_MemoryError, "memory allocation failed");
            return -1;
        }
        s->s = p;
        s->allocated = to_alloc;
    }
    s->s[s->pos] = c;
    ++s->pos;
    return 0;
}
