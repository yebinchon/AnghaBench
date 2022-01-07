
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLcontext ;


 int ERR (char*,int ) ;
 int wine_dbgstr_a (char const*) ;

void gl_problem( const GLcontext *ctx, const char *s )
{
   ERR("MESA ERROR : %s\n", wine_dbgstr_a(s));
}
