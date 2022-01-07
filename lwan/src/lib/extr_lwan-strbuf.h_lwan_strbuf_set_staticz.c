
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_strbuf {int dummy; } ;


 int lwan_strbuf_set_static (struct lwan_strbuf*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline bool lwan_strbuf_set_staticz(struct lwan_strbuf *s1,
                                           const char *s2)
{
    return lwan_strbuf_set_static(s1, s2, strlen(s2));
}
