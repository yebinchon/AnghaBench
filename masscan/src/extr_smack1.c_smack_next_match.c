
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SmackMatches {size_t* m_ids; } ;
struct SMACK {struct SmackMatches* m_match; } ;


 size_t SMACK_NOT_FOUND ;

size_t
smack_next_match(struct SMACK *smack, unsigned *current_state)
{
    unsigned row, current_matches;
    size_t id = SMACK_NOT_FOUND;


    row = *current_state & 0xFFFFFF;
    current_matches = (*current_state)>>24;


    if (current_matches) {
        const struct SmackMatches *match = smack->m_match;
        id = match[row].m_ids[current_matches-1];
        current_matches--;
    }


    *current_state = row | (current_matches<<24);

    return id;
}
