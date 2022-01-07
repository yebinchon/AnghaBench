
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Output {int * src; } ;


 scalar_t__ is_myself (int *,unsigned int,unsigned int) ;

__attribute__((used)) static int
matches_me(struct Output *out, unsigned ip, unsigned port)
{
    unsigned i;

    for (i=0; i<8; i++) {
        if (is_myself(&out->src[i], ip, port))
            return 1;
    }
    return 0;
}
