
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SMACK {unsigned int symbol_count; unsigned int* symbol_to_char; unsigned char* char_to_symbol; } ;



__attribute__((used)) static unsigned
smack_add_symbol(struct SMACK *smack, unsigned c)
{
    unsigned i;
    unsigned symbol;


    for (i=1; i<=smack->symbol_count; i++) {
        if (smack->symbol_to_char[i] == c)
            return i;
    }


    smack->symbol_count++;
    symbol = smack->symbol_count;


    smack->symbol_to_char[symbol] = c;
    smack->char_to_symbol[c] = (unsigned char)symbol;

    return symbol;
}
