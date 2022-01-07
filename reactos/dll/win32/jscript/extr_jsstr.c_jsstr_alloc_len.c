
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;
typedef int WCHAR ;


 int * jsstr_alloc_buf (unsigned int,int **) ;
 int memcpy (int *,int const*,unsigned int) ;

jsstr_t *jsstr_alloc_len(const WCHAR *buf, unsigned len)
{
    jsstr_t *ret;
    WCHAR *ptr;

    ret = jsstr_alloc_buf(len, &ptr);
    if(ret)
        memcpy(ptr, buf, len*sizeof(WCHAR));

    return ret;
}
