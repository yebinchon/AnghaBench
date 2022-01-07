
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* prev_bio; struct TYPE_8__* next_bio; } ;
struct TYPE_7__ {TYPE_2__* next_bio; } ;
typedef TYPE_2__ BIO ;


 int BIO_CTRL_POP ;
 int BIO_ctrl (TYPE_2__*,int ,int ,TYPE_2__*) ;

BIO *BIO_pop(BIO *b)
{
    BIO *ret;

    if (b == ((void*)0))
        return ((void*)0);
    ret = b->next_bio;

    BIO_ctrl(b, BIO_CTRL_POP, 0, b);

    if (b->prev_bio != ((void*)0))
        b->prev_bio->next_bio = b->next_bio;
    if (b->next_bio != ((void*)0))
        b->next_bio->prev_bio = b->prev_bio;

    b->next_bio = ((void*)0);
    b->prev_bio = ((void*)0);
    return ret;
}
