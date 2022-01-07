
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rb_encoding ;
typedef int char_u ;
typedef int VALUE ;


 int get_option_value (int *,long*,int **,int ) ;
 int * rb_enc_find (char*) ;
 int rb_enc_str_new (char const*,int ,int *) ;
 int rb_str_new2 (char const*) ;
 int strlen (char const*) ;
 int vim_free (int *) ;

__attribute__((used)) static VALUE
vim_str2rb_enc_str(const char *s)
{
    return rb_str_new2(s);
}
