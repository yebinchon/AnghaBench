
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ URLTEMPLATE ;
typedef int DWORD ;


 int ARRAY_SIZE (scalar_t__*) ;
 int FIXME (char*,scalar_t__) ;
 int TRACE (char*,scalar_t__,int) ;
 scalar_t__* url_templates ;

__attribute__((used)) static DWORD index_from_urltemplate(URLTEMPLATE value)
{

    DWORD index = ARRAY_SIZE(url_templates);

    while((index > 0) && (url_templates[index-1] != value))
        index--;

    index--;
    if (!index && value)
        FIXME("URLTEMPLATE 0x%x not supported\n", value);

    TRACE("URLTEMPLATE 0x%08x=> Level %d\n", value, index);
    return index;
}
