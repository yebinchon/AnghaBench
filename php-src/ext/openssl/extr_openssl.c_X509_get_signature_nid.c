
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sig_alg; } ;
typedef TYPE_2__ X509 ;
struct TYPE_4__ {int algorithm; } ;


 int OBJ_obj2nid (int ) ;

__attribute__((used)) static int X509_get_signature_nid(const X509 *x)
{
 return OBJ_obj2nid(x->sig_alg->algorithm);
}
