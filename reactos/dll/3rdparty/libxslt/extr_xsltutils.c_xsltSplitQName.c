
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlDictPtr ;
typedef char xmlChar ;


 char const* xmlDictLookup (int *,char const*,int) ;

const xmlChar *
xsltSplitQName(xmlDictPtr dict, const xmlChar *name, const xmlChar **prefix) {
    int len = 0;
    const xmlChar *ret = ((void*)0);

    *prefix = ((void*)0);
    if ((name == ((void*)0)) || (dict == ((void*)0))) return(((void*)0));
    if (name[0] == ':')
        return(xmlDictLookup(dict, name, -1));
    while ((name[len] != 0) && (name[len] != ':')) len++;
    if (name[len] == 0) return(xmlDictLookup(dict, name, -1));
    *prefix = xmlDictLookup(dict, name, len);
    ret = xmlDictLookup(dict, &name[len + 1], -1);
    return(ret);
}
