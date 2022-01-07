
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NtlmsspDecode {unsigned int length; int * buf; scalar_t__ offset; } ;


 int memset (struct NtlmsspDecode*,int ,int) ;

void
ntlmssp_decode_init(struct NtlmsspDecode *x, size_t length)
{
    memset(x, 0, sizeof(*x));






    if (length > 65536)
        length = 65536;

    x->length = (unsigned)length;
    x->offset = 0;
    x->buf = ((void*)0);

}
