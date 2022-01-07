
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int engine_table_unregister (int *,int *) ;
 int pkey_asn1_meth_table ;

void ENGINE_unregister_pkey_asn1_meths(ENGINE *e)
{
    engine_table_unregister(&pkey_asn1_meth_table, e);
}
