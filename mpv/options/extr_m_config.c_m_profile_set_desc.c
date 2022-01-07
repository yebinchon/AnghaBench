
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_profile {int desc; } ;
typedef int bstr ;


 int bstrto0 (struct m_profile*,int ) ;
 int talloc_free (int ) ;

void m_profile_set_desc(struct m_profile *p, bstr desc)
{
    talloc_free(p->desc);
    p->desc = bstrto0(p, desc);
}
