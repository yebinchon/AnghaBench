
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
struct TYPE_7__ {int tcc_lib_path; } ;
typedef TYPE_1__ TCCState ;
typedef TYPE_2__ CString ;


 int PATHSEP ;
 int cstr_cat (TYPE_2__*,int ) ;
 int cstr_ccat (TYPE_2__*,char) ;
 int cstr_new (TYPE_2__*) ;
 int dynarray_add (void***,int*,int ) ;

__attribute__((used)) static void tcc_split_path(TCCState *s, void ***p_ary, int *p_nb_ary, const char *in)
{
 const char *p;
 do {
  int c;
  CString str;

  cstr_new (&str);
  for (p = in; c = *p, c != '\0' && c != PATHSEP; ++p) {
   if (c == '{' && p[1] && p[2] == '}') {
    c = p[1], p += 2;
    if (c == 'B') {
     cstr_cat (&str, s->tcc_lib_path);
    }
   } else {
    cstr_ccat (&str, c);
   }
  }
  cstr_ccat (&str, '\0');
  dynarray_add (p_ary, p_nb_ary, str.data);
  in = p + 1;
 } while (*p);
}
