
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* mp_imgfmt_to_name (int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int cmp_imgfmt_name(const void *a, const void *b)
{
    char *name_a = mp_imgfmt_to_name(*(int *)a);
    char *name_b = mp_imgfmt_to_name(*(int *)b);

    return strcmp(name_a, name_b);
}
