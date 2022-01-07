
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_tok_str (int,int *) ;
 int next () ;
 int tcc_error (char*,int,int ) ;
 int tok ;
 int tokc ;

void skip(int c)
{
 if (tok != c) {
  tcc_error ("'%c' expected (got \"%s\")", c, get_tok_str (tok, &tokc));
 }
 next ();
}
