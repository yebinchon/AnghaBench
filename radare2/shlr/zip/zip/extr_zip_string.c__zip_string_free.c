
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_string {struct zip_string* converted; struct zip_string* raw; } ;


 int free (struct zip_string*) ;

void
_zip_string_free(struct zip_string *s)
{
    if (s == ((void*)0))
 return;

    free(s->raw);
    free(s->converted);
    free(s);
}
