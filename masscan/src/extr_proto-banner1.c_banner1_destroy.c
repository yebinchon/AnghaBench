
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Banner1 {scalar_t__ http_fields; scalar_t__ smack; } ;


 int free (struct Banner1*) ;
 int smack_destroy (scalar_t__) ;

void
banner1_destroy(struct Banner1 *b)
{
    if (b == ((void*)0))
        return;
    if (b->smack)
        smack_destroy(b->smack);
    if (b->http_fields)
        smack_destroy(b->http_fields);
    free(b);
}
