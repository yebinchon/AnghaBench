
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WINE_TRACE (char*,int ,int ) ;
 int debugstr_a (char const*) ;
 int strcmp (void*,void const*) ;
 int strlen (void*) ;

__attribute__((used)) static int comp_FindSubFile(void *p, const void *key,
                            int leaf, void** next)
{
    *next = (char *)p+strlen(p)+(leaf?5:3);
    WINE_TRACE("Comparing %s with %s\n", debugstr_a((char *)p), debugstr_a((const char *)key));
    return strcmp(p, key);
}
