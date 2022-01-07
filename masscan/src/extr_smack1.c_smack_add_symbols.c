
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SMACK {scalar_t__ is_nocase; } ;


 int smack_add_symbol (struct SMACK*,unsigned char const) ;
 unsigned char const tolower (unsigned char const) ;

__attribute__((used)) static void
smack_add_symbols(struct SMACK *smack, const unsigned char *pattern, unsigned pattern_length)
{
    unsigned i;


    for (i=0; i<pattern_length; i++) {
        if (smack->is_nocase)
            smack_add_symbol(smack, tolower(pattern[i]));
        else
            smack_add_symbol(smack, pattern[i]);
    }
}
