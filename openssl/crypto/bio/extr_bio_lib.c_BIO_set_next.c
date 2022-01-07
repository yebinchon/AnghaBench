
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next_bio; } ;
typedef TYPE_1__ BIO ;



void BIO_set_next(BIO *b, BIO *next)
{
    b->next_bio = next;
}
