
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SmackMatches {struct SmackMatches* DEBUG_name; struct SmackMatches* m_ids; scalar_t__ m_count; } ;
struct SMACK {unsigned int m_state_count; struct SmackMatches* m_match; } ;


 int assert (int ) ;
 int free (struct SmackMatches*) ;

__attribute__((used)) static void
destroy_matches_table(struct SMACK *smack)
{
    unsigned i;

    if (!smack->m_match)
        return;


    for (i=0; i<smack->m_state_count; i++) {
        struct SmackMatches *match;
        match = &smack->m_match[i];

        if (match->m_count) {
            free(match->m_ids);
        } else {
            assert(match->m_ids == ((void*)0));
        }




    }

    free(smack->m_match);
    smack->m_match = 0;
}
