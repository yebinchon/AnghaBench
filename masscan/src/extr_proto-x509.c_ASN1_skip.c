
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* remainings; } ;
struct CertDecode {TYPE_1__ stack; } ;



__attribute__((used)) static unsigned
ASN1_skip(struct CertDecode *x, unsigned *i, size_t length)
{
    unsigned len;

    if (x->stack.remainings[0] == 0)
        return 1;


    len = (unsigned)(length - (*i) - 1);


    if (len > x->stack.remainings[0])
        len = x->stack.remainings[0];


    (*i) += len;


    x->stack.remainings[0] = (unsigned short)(x->stack.remainings[0] - len);

    return x->stack.remainings[0] == 0;

}
