
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* pathbyaddr ) (void*,char*,int) ;} ;
typedef TYPE_1__ DSO_METHOD ;


 int DSO_F_DSO_PATHBYADDR ;
 TYPE_1__* DSO_METHOD_openssl () ;
 int DSO_R_UNSUPPORTED ;
 int DSOerr (int ,int ) ;
 TYPE_1__* default_DSO_meth ;
 int stub1 (void*,char*,int) ;

int DSO_pathbyaddr(void *addr, char *path, int sz)
{
    DSO_METHOD *meth = default_DSO_meth;
    if (meth == ((void*)0))
        meth = DSO_METHOD_openssl();
    if (meth->pathbyaddr == ((void*)0)) {
        DSOerr(DSO_F_DSO_PATHBYADDR, DSO_R_UNSUPPORTED);
        return -1;
    }
    return (*meth->pathbyaddr) (addr, path, sz);
}
