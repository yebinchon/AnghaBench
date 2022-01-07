
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;
struct SN_env {int* I; unsigned char* B; int ** S; int * p; } ;


 int SN_close_env (struct SN_env*,int) ;
 scalar_t__ calloc (int,int) ;
 void* create_s () ;

extern struct SN_env * SN_create_env(int S_size, int I_size, int B_size)
{
    struct SN_env * z = (struct SN_env *) calloc(1, sizeof(struct SN_env));
    if (z == ((void*)0)) return ((void*)0);
    z->p = create_s();
    if (z->p == ((void*)0)) goto error;
    if (S_size)
    {
        int i;
        z->S = (symbol * *) calloc(S_size, sizeof(symbol *));
        if (z->S == ((void*)0)) goto error;

        for (i = 0; i < S_size; i++)
        {
            z->S[i] = create_s();
            if (z->S[i] == ((void*)0)) goto error;
        }
    }

    if (I_size)
    {
        z->I = (int *) calloc(I_size, sizeof(int));
        if (z->I == ((void*)0)) goto error;
    }

    if (B_size)
    {
        z->B = (unsigned char *) calloc(B_size, sizeof(unsigned char));
        if (z->B == ((void*)0)) goto error;
    }

    return z;
error:
    SN_close_env(z, S_size);
    return ((void*)0);
}
