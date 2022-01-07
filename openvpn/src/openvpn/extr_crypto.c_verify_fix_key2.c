
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int dummy; } ;
struct key2 {int n; int * keys; } ;


 int M_FATAL ;
 int check_key (int *,struct key_type const*) ;
 int fixup_key (int *,struct key_type const*) ;
 int msg (int ,char*,int,char const*) ;

void
verify_fix_key2(struct key2 *key2, const struct key_type *kt, const char *shared_secret_file)
{
    int i;

    for (i = 0; i < key2->n; ++i)
    {

        fixup_key(&key2->keys[i], kt);


        if (!check_key(&key2->keys[i], kt))
        {
            msg(M_FATAL, "Key #%d in '%s' is bad.  Try making a new key with --genkey.",
                i+1, shared_secret_file);
        }
    }
}
