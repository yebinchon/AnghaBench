
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ transition_t ;
struct SMACK {unsigned int m_state_count; unsigned char* char_to_symbol; int row_shift; scalar_t__* table; int symbol_count; } ;


 unsigned int ALPHABET_SIZE ;
 unsigned int GOTO (unsigned int,unsigned int) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__* malloc (int) ;
 int memset (scalar_t__*,int ,int) ;
 int row_shift_from_symbol_count (int ) ;
 int stderr ;

__attribute__((used)) static void
smack_stage4_make_final_table(struct SMACK *smack)
{
    unsigned row;
    unsigned row_count = smack->m_state_count;
    unsigned column_count;
    transition_t *table;
    unsigned char *char_to_symbol = smack->char_to_symbol;






    smack->row_shift = row_shift_from_symbol_count(smack->symbol_count);
    column_count = 1 << smack->row_shift;





    table = malloc(sizeof(transition_t) * row_count * column_count);
    if (table == ((void*)0)) {
        fprintf(stderr, "%s: out of memory error\n", "smack");
        exit(1);
    }
    memset(table, 0, sizeof(transition_t) * row_count * column_count);


    for (row=0; row<row_count; row++) {
        unsigned col;

        for (col=0; col<ALPHABET_SIZE; col++) {
            unsigned transition;
            unsigned symbol = char_to_symbol[col];

            transition = GOTO(row,col);

            *(table + row*column_count + symbol) = (transition_t)transition;
        }
    }

    smack->table = table;
}
