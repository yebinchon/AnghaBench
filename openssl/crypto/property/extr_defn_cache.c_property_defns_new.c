
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;


 void* lh_PROPERTY_DEFN_ELEM_new (int *,int *) ;
 int property_defn_cmp ;
 int property_defn_hash ;

__attribute__((used)) static void *property_defns_new(OPENSSL_CTX *ctx) {
    return lh_PROPERTY_DEFN_ELEM_new(&property_defn_hash, &property_defn_cmp);
}
