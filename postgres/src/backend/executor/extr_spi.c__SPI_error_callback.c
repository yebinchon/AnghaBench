
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errcontext (char*,char const*) ;
 int errposition (int ) ;
 int geterrposition () ;
 int internalerrposition (int) ;
 int internalerrquery (char const*) ;

__attribute__((used)) static void
_SPI_error_callback(void *arg)
{
 const char *query = (const char *) arg;
 int syntaxerrposition;

 if (query == ((void*)0))
  return;





 syntaxerrposition = geterrposition();
 if (syntaxerrposition > 0)
 {
  errposition(0);
  internalerrposition(syntaxerrposition);
  internalerrquery(query);
 }
 else
  errcontext("SQL statement \"%s\"", query);
}
