
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SmackPattern {scalar_t__ is_anchor_end; scalar_t__ is_anchor_begin; scalar_t__ pattern_length; } ;
struct SMACK {int m_state_max; scalar_t__ is_anchor_begin; struct SmackPattern** m_pattern_list; scalar_t__ m_pattern_count; int * char_to_symbol; scalar_t__ is_nocase; scalar_t__ is_anchor_end; } ;


 int BASE_STATE ;
 int CHAR_ANCHOR_END ;
 int CHAR_ANCHOR_START ;
 int UNANCHORED_STATE ;
 int create_intermediate_table (struct SMACK*,int) ;
 int create_matches_table (struct SMACK*,int) ;
 int destroy_intermediate_table (struct SMACK*) ;
 int destroy_pattern_table (struct SMACK*) ;
 int smack_add_symbol (struct SMACK*,int ) ;
 int smack_fixup_wildcards (struct SMACK*) ;
 int smack_stage0_compile_prefixes (struct SMACK*) ;
 int smack_stage1_generate_fails (struct SMACK*) ;
 int smack_stage2_link_fails (struct SMACK*) ;
 int smack_stage3_sort (struct SMACK*) ;
 int smack_stage4_make_final_table (struct SMACK*) ;
 int swap_rows (struct SMACK*,int ,int ) ;
 size_t tolower (unsigned int) ;

void
smack_compile(struct SMACK *smack)
{
    unsigned i;




    if (smack->is_anchor_begin)
        smack_add_symbol(smack, CHAR_ANCHOR_START);
    if (smack->is_anchor_end)
        smack_add_symbol(smack, CHAR_ANCHOR_END);
    if (smack->is_nocase) {
        for (i='A'; i<='Z'; i++) {
            smack->char_to_symbol[i] = smack->char_to_symbol[tolower(i)];
        }
    }







    smack->m_state_max = 1;
    for (i=0; i<(int)smack->m_pattern_count; i++) {
        struct SmackPattern *pat = smack->m_pattern_list[i];

        smack->m_state_max += pat->pattern_length;
        smack->m_state_max += pat->is_anchor_begin;
        smack->m_state_max += pat->is_anchor_end;
    }




    create_intermediate_table(smack, smack->m_state_max);
    create_matches_table(smack, smack->m_state_max);





    smack_stage0_compile_prefixes(smack);
    smack_stage1_generate_fails(smack);
    smack_stage2_link_fails(smack);




    if (smack->is_anchor_begin) {
        swap_rows(smack, BASE_STATE, UNANCHORED_STATE);
    }


    smack_stage3_sort(smack);




    smack_stage4_make_final_table(smack);




    smack_fixup_wildcards(smack);







    destroy_pattern_table(smack);
    destroy_intermediate_table(smack);

}
