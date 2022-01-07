
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SMACK {scalar_t__ m_state_table; } ;


 int free (scalar_t__) ;

__attribute__((used)) static void
destroy_intermediate_table(struct SMACK *smack)
{
    if (smack->m_state_table) {
        free(smack->m_state_table);
        smack->m_state_table = 0;
    }
}
