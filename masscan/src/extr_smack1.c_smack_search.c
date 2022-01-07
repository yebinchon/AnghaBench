
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t transition_t ;
struct SmackMatches {char* DEBUG_name; scalar_t__ m_count; } ;
struct SMACK {unsigned char* char_to_symbol; size_t* table; unsigned int row_shift; struct SmackMatches* m_match; } ;
typedef int FOUND_CALLBACK ;


 unsigned int handle_match (struct SMACK*,unsigned int,int ,void*,unsigned int) ;
 scalar_t__ print_transitions ;
 int printf (char*,char*,unsigned char,char*,char*) ;

unsigned
smack_search( struct SMACK * smack,
                const void *v_px,
                unsigned length,
                FOUND_CALLBACK cb_found,
                void *callback_data,
                unsigned *current_state)
{
    const unsigned char *px = (const unsigned char*)v_px;
    unsigned row;
    unsigned i;
    const unsigned char *char_to_symbol = smack->char_to_symbol;
    transition_t *table = smack->table;
    unsigned row_shift = smack->row_shift;
    unsigned found_count = 0;
    const struct SmackMatches *match = smack->m_match;



    row = *current_state & 0xFFFFFF;


    for (i=0; i<length; i++) {
        unsigned char column;
        unsigned char c;


        c = px[i];






        column = char_to_symbol[c];
        row = *(table + (row<<row_shift) + column);



        if (match[row].m_count)
            found_count = handle_match(smack, i, cb_found, callback_data, row);
    }
    *current_state = row;
    return found_count;
}
