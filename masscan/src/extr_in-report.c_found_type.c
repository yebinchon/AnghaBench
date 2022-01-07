
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SMACK_NOT_FOUND ;
 int * counts ;
 int global_xnames ;
 size_t smack_search_next (int ,unsigned int*,unsigned char const*,unsigned int*,unsigned int) ;

__attribute__((used)) static unsigned
found_type(const unsigned char *banner, size_t banner_length)
{
    size_t id;
    unsigned state = 0;
    unsigned offset = 0;






    id = smack_search_next( global_xnames,
                                        &state,
                                        banner,
                                        &offset,
                                        (unsigned)banner_length);
    if (id == SMACK_NOT_FOUND)
        return 0;

    counts[id]++;

    return 1;
}
