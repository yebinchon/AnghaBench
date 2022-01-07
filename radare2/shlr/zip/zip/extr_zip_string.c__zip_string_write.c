
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_string {int length; int raw; } ;
typedef int FILE ;


 int fwrite (int ,int ,int,int *) ;

void
_zip_string_write(const struct zip_string *s, FILE *f)
{
    if (s == ((void*)0))
 return;

    fwrite(s->raw, s->length, 1, f);
}
