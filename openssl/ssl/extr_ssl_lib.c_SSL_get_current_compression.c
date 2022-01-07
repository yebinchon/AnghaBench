
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ compress; } ;
typedef TYPE_1__ SSL ;
typedef int COMP_METHOD ;


 int const* COMP_CTX_get_method (scalar_t__) ;

const COMP_METHOD *SSL_get_current_compression(const SSL *s)
{

    return s->compress ? COMP_CTX_get_method(s->compress) : ((void*)0);



}
