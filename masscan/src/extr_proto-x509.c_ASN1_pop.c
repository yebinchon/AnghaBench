
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* states; int depth; unsigned int* remainings; } ;
struct CertDecode {TYPE_1__ stack; } ;


 int memmove (unsigned int*,unsigned int*,int) ;

__attribute__((used)) static unsigned
ASN1_pop(struct CertDecode *x)
{
    unsigned next_state;
    next_state = x->stack.states[0];
    x->stack.depth--;
    memmove( &x->stack.remainings[0],
                &x->stack.remainings[1],
                x->stack.depth * sizeof(x->stack.remainings[0]));
    memmove( &x->stack.states[0],
                &x->stack.states[1],
                x->stack.depth * sizeof(x->stack.states[0]));
    return next_state;
}
