
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SmackRow {int dummy; } ;
struct SMACK {struct SmackRow* m_state_table; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ malloc (int) ;
 int memset (struct SmackRow*,int ,int) ;
 int stderr ;

__attribute__((used)) static void
create_intermediate_table(struct SMACK *smack, unsigned size)
{
    struct SmackRow *x;

    x = (struct SmackRow *)malloc(sizeof(*x) * size);
    if (x == ((void*)0)) {
        fprintf(stderr, "%s: out of memory error\n", "smack");
        exit(1);
    }
    memset(x, 0, sizeof(*x) * size);
    smack->m_state_table = x;
}
