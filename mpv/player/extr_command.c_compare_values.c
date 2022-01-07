
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_option {int dummy; } ;


 int bstr0 (char*) ;
 int bstr_equals (int ,int ) ;
 char* m_option_print (struct m_option*,void*) ;
 int talloc_free (char*) ;

__attribute__((used)) static bool compare_values(struct m_option *type, void *a, void *b)
{


    char *as = m_option_print(type, a);
    char *bs = m_option_print(type, b);
    bool res = bstr_equals(bstr0(as), bstr0(bs));
    talloc_free(as);
    talloc_free(bs);
    return res;
}
