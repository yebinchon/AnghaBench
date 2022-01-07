
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fillfactor ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
append_fillfactor(char *opts, int len)
{
 snprintf(opts + strlen(opts), len - strlen(opts),
    " with (fillfactor=%d)", fillfactor);
}
