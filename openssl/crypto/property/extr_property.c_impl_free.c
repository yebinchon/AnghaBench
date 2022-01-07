
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int method; int (* method_destruct ) (int ) ;} ;
typedef TYPE_1__ IMPLEMENTATION ;


 int OPENSSL_free (TYPE_1__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void impl_free(IMPLEMENTATION *impl)
{
    if (impl != ((void*)0)) {
        if (impl->method_destruct)
            impl->method_destruct(impl->method);
        OPENSSL_free(impl);
    }
}
