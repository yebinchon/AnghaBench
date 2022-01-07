
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;
typedef int WCHAR ;


 int * jsstr_alloc_buf (unsigned int,int **) ;
 int jsstr_extract (int *,unsigned int,unsigned int,int *) ;

__attribute__((used)) static inline jsstr_t *jsstr_substr(jsstr_t *str, unsigned off, unsigned len)
{
    jsstr_t *ret;
    WCHAR *ptr;

    ret = jsstr_alloc_buf(len, &ptr);
    if(ret)
        jsstr_extract(str, off, len, ptr);
    return ret;
}
