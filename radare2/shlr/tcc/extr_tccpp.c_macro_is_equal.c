
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CValue ;


 int STRING_MAX_SIZE ;
 int TOK_GET (int*,int const**,int *) ;
 int get_tok_str (int,int *) ;
 int pstrcpy (char*,int,int ) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int macro_is_equal(const int *a, const int *b)
{
 char buf[STRING_MAX_SIZE + 1];
 CValue cv;
 int t;
 while (*a && *b) {
  TOK_GET (&t, &a, &cv);
  pstrcpy (buf, sizeof buf, get_tok_str (t, &cv));
  TOK_GET (&t, &b, &cv);
  if (strcmp (buf, get_tok_str (t, &cv))) {
   return 0;
  }
 }
 return !(*a || *b);
}
