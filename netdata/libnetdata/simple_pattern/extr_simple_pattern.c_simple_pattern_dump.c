
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct simple_pattern {int * next; int * child; int match; int mode; } ;
typedef int SIMPLE_PATTERN ;


 int debug (int ,char*,...) ;

extern void simple_pattern_dump(uint64_t debug_type, SIMPLE_PATTERN *p)
{
    struct simple_pattern *root = (struct simple_pattern *)p;
    if(root==((void*)0)) {
        debug(debug_type,"dump_pattern(NULL)");
        return;
    }
    debug(debug_type,"dump_pattern(%p) child=%p next=%p mode=%d match=%s", root, root->child, root->next, root->mode,
          root->match);
    if(root->child!=((void*)0))
        simple_pattern_dump(debug_type, (SIMPLE_PATTERN*)root->child);
    if(root->next!=((void*)0))
        simple_pattern_dump(debug_type, (SIMPLE_PATTERN*)root->next);
}
