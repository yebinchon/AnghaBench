
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SMACK {struct SMACK* table; } ;


 int destroy_intermediate_table (struct SMACK*) ;
 int destroy_matches_table (struct SMACK*) ;
 int destroy_pattern_table (struct SMACK*) ;
 int free (struct SMACK*) ;

void
smack_destroy(struct SMACK *smack)
{
    destroy_intermediate_table(smack);
    destroy_matches_table(smack);
    destroy_pattern_table(smack);

    if (smack->table)
        free(smack->table);

    free(smack);
}
