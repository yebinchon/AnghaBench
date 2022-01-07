
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,int,char*,int) ;
 int stderr ;

extern int
s_rnge(char *var, int index, char *routine, int lineno)
{
    fprintf(stderr, "array index out-of-bounds for %s[%d] in routine %s:%d\n",
            var, index, routine, lineno);
    fflush(stderr);
    abort();
}
