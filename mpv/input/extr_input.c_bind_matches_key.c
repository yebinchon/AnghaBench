
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_bind {int num_keys; int const* keys; } ;



__attribute__((used)) static bool bind_matches_key(struct cmd_bind *bind, int num_keys, const int *keys)
{
    if (bind->num_keys != num_keys)
        return 0;
    for (int i = 0; i < num_keys; i++) {
        if (bind->keys[i] != keys[i])
            return 0;
    }
    return 1;
}
