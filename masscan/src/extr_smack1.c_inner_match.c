
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int transition_t ;



__attribute__((used)) static size_t
inner_match( const unsigned char *px,
                size_t length,
                const unsigned char *char_to_symbol,
                const transition_t *table,
                unsigned *state,
                unsigned match_limit,
                unsigned row_shift)
{
    const unsigned char *px_start = px;
    const unsigned char *px_end = px + length;
    unsigned row = *state;

    for ( ; px<px_end; px++) {
        unsigned char column;






        column = char_to_symbol[*px];
        row = *(table + (row<<row_shift) + column);

        if (row >= match_limit)
            break;

    }

    *state = row;
    return px - px_start;
}
