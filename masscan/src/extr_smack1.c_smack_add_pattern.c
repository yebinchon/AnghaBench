
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SmackPattern {unsigned int pattern_length; int is_anchor_begin; int is_anchor_end; int is_snmp_hack; int is_wildcards; size_t id; int pattern; } ;
struct SMACK {int is_anchor_begin; int is_anchor_end; int m_pattern_count; int m_pattern_max; struct SmackPattern** m_pattern_list; int is_nocase; } ;


 unsigned int SMACK_ANCHOR_BEGIN ;
 unsigned int SMACK_ANCHOR_END ;
 unsigned int SMACK_SNMP_HACK ;
 unsigned int SMACK_WILDCARDS ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int free (struct SmackPattern**) ;
 int make_copy_of_pattern (unsigned char const*,unsigned int,int ) ;
 scalar_t__ malloc (int) ;
 int memcpy (struct SmackPattern**,struct SmackPattern**,int) ;
 int smack_add_symbols (struct SMACK*,unsigned char const*,int) ;
 int stderr ;

void
smack_add_pattern(
    struct SMACK * smack,
    const void * v_pattern,
    unsigned pattern_length,
    size_t id,
    unsigned flags)
{
    const unsigned char *pattern = (const unsigned char*)v_pattern;
    struct SmackPattern *pat;





    pat = (struct SmackPattern *)malloc(sizeof (struct SmackPattern));
    if (pat == ((void*)0)) {
        fprintf(stderr, "%s: out of memory error\n", "smack");
        exit(1);
    }
    pat->pattern_length = pattern_length;
    pat->is_anchor_begin = ((flags & SMACK_ANCHOR_BEGIN) > 0);
    pat->is_anchor_end = ((flags & SMACK_ANCHOR_END) > 0);
    pat->is_snmp_hack = ((flags & SMACK_SNMP_HACK) > 0);
    pat->is_wildcards = ((flags & SMACK_WILDCARDS) > 0);
    pat->id = id;
    pat->pattern = make_copy_of_pattern(pattern, pattern_length, smack->is_nocase);
    if (pat->is_anchor_begin)
        smack->is_anchor_begin = 1;
    if (pat->is_anchor_end)
        smack->is_anchor_end = 1;







    smack_add_symbols(smack, pattern, pattern_length);
    if (pat->is_snmp_hack)
        smack_add_symbols(smack, (const unsigned char *)"\x80", 1);






    if (smack->m_pattern_count + 1 >= smack->m_pattern_max) {
        struct SmackPattern **new_list;
        unsigned new_max;

        new_max = smack->m_pattern_max * 2 + 1;
        new_list = (struct SmackPattern **)malloc(sizeof(*new_list)*new_max);
        if (new_list == ((void*)0)) {
            fprintf(stderr, "%s: out of memory error\n", "smack");
            exit(1);
        }

        if (smack->m_pattern_list) {
            memcpy( new_list,
                    smack->m_pattern_list,
                    sizeof(*new_list) * smack->m_pattern_count);
            free(smack->m_pattern_list);
        }

        smack->m_pattern_list = new_list;
        smack->m_pattern_max = new_max;
    }





    smack->m_pattern_list[smack->m_pattern_count] = pat;
    smack->m_pattern_count++;
}
