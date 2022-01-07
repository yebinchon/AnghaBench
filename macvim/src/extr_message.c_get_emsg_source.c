
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 scalar_t__ STRLEN (int *) ;
 scalar_t__ _ (char*) ;
 int * alloc (unsigned int) ;
 scalar_t__ other_sourcing_name () ;
 int * sourcing_name ;
 int sprintf (char*,char*,int *) ;

__attribute__((used)) static char_u *
get_emsg_source()
{
    char_u *Buf, *p;

    if (sourcing_name != ((void*)0) && other_sourcing_name())
    {
 p = (char_u *)_("Error detected while processing %s:");
 Buf = alloc((unsigned)(STRLEN(sourcing_name) + STRLEN(p)));
 if (Buf != ((void*)0))
     sprintf((char *)Buf, (char *)p, sourcing_name);
 return Buf;
    }
    return ((void*)0);
}
