
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int defn; } ;
typedef TYPE_1__ PROPERTY_DEFN_ELEM ;


 int OPENSSL_free (TYPE_1__*) ;
 int ossl_property_free (int ) ;

__attribute__((used)) static void property_defn_free(PROPERTY_DEFN_ELEM *elem)
{
    ossl_property_free(elem->defn);
    OPENSSL_free(elem);
}
