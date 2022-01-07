
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_tags {int dummy; } ;


 int bstr0 (char const*) ;
 int mp_tags_remove_bstr (struct mp_tags*,int ) ;

void mp_tags_remove_str(struct mp_tags *tags, const char *key)
{
    mp_tags_remove_bstr(tags, bstr0(key));
}
