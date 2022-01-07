
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SMACK {unsigned int is_nocase; char* name; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int memset (struct SMACK*,int ,int) ;
 int stderr ;
 int strlen (char const*) ;

struct SMACK *
smack_create(const char *name, unsigned nocase)
{
    struct SMACK *smack;

    smack = (struct SMACK *)malloc(sizeof (struct SMACK));
    if (smack == ((void*)0)) {
        fprintf(stderr, "%s: out of memory error\n", "smack");
        exit(1);
    }
    memset (smack, 0, sizeof (struct SMACK));

    smack->is_nocase = nocase;
    smack->name = (char*)malloc(strlen(name)+1);
    if (smack->name == ((void*)0)) {
        fprintf(stderr, "%s: out of memory error\n", "smack");
        exit(1);
    }
    memcpy(smack->name, name, strlen(name)+1);
    return smack;
}
