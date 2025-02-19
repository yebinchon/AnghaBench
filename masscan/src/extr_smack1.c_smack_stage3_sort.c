
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SMACK {unsigned int m_state_count; unsigned int m_match_limit; TYPE_1__* m_match; } ;
struct TYPE_2__ {scalar_t__ m_count; } ;


 int swap_rows (struct SMACK*,unsigned int,unsigned int) ;

__attribute__((used)) static void
smack_stage3_sort(struct SMACK *smack)
{
    unsigned start = 0;
    unsigned end = smack->m_state_count;

    for (;;) {

        while (start < end && smack->m_match[start].m_count == 0)
            start++;
        while (start < end && smack->m_match[end-1].m_count != 0)
            end--;

        if (start >= end)
            break;

        swap_rows(smack, start, end-1);
    }

    smack->m_match_limit = start;
}
