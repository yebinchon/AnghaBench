
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NtlmsspDecode {scalar_t__ buf; } ;


 int free (scalar_t__) ;

void
ntlmssp_cleanup(struct NtlmsspDecode *x)
{
    if (x->buf) {
        free(x->buf);
        x->buf = 0;
    }
}
