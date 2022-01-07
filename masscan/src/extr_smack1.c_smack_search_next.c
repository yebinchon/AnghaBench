
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transition_t ;
struct SmackMatches {int m_count; size_t* m_ids; } ;
struct SMACK {unsigned char* char_to_symbol; unsigned int row_shift; unsigned int m_match_limit; struct SmackMatches* m_match; int * table; } ;


 size_t inner_match (unsigned char const*,int ,unsigned char const*,int const*,unsigned int*,unsigned int,unsigned int) ;
 size_t inner_match_shift7 (unsigned char const*,int ,unsigned char const*,int const*,unsigned int*,unsigned int) ;

size_t
smack_search_next( struct SMACK * smack,
                        unsigned * current_state,
                        const void * v_px,
                        unsigned * offset,
                        unsigned length
                        )
{
    const unsigned char *px = (const unsigned char*)v_px;
    unsigned row;
    register size_t i = *offset;
    const unsigned char *char_to_symbol = smack->char_to_symbol;
    const transition_t *table = smack->table;
    register unsigned row_shift = smack->row_shift;
    const struct SmackMatches *match = smack->m_match;
    unsigned current_matches = 0;
    size_t id = (size_t)-1;
    register unsigned match_limit = smack->m_match_limit;



    row = *current_state & 0xFFFFFF;


    current_matches = (*current_state)>>24;


    if (!current_matches) {
        switch (row_shift) {
            case 7:
                i += inner_match_shift7(px + i,
                                 length - i,
                                 char_to_symbol,
                                 table,
                                 &row,
                                 match_limit);
                break;
            default:
                i += inner_match(px + i,
                                 length - i,
                                 char_to_symbol,
                                 table,
                                 &row,
                                 match_limit,
                                 row_shift);
                break;

        }





        if (match[row].m_count) {
            i++;
            current_matches = match[row].m_count;
        }
    }

    *offset = (unsigned)i;


    if (current_matches) {
        id = match[row].m_ids[current_matches-1];
        current_matches--;
    }

    *current_state = row | (current_matches<<24);
    return id;
}
