
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSA_generate_key (int ) ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr (int ) ;
 int dsakey ;
 int load_dsa_params () ;

__attribute__((used)) static int genkeys(void)
{
    if (!TEST_ptr(dsakey = load_dsa_params()))
        return 0;

    if (!TEST_int_eq(DSA_generate_key(dsakey), 1))
        return 0;

    return 1;
}
