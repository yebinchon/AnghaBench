
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SmackMatches {int dummy; } ;
struct SMACK {struct SmackMatches* m_match; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ malloc (int) ;
 int memset (struct SmackMatches*,int ,int) ;
 int stderr ;

__attribute__((used)) static void
create_matches_table(struct SMACK *smack, unsigned size)
{
    struct SmackMatches *x;

    x = (struct SmackMatches *)malloc(sizeof(*x) * size);
    if (x == ((void*)0)) {
        fprintf(stderr, "%s: out of memory error\n", "smack");
        exit(1);
    }
    memset(x, 0, sizeof(*x) * size);

    smack->m_match = x;
}
