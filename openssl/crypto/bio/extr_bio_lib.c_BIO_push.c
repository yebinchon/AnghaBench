
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* prev_bio; struct TYPE_7__* next_bio; } ;
typedef TYPE_1__ BIO ;


 int BIO_CTRL_PUSH ;
 int BIO_ctrl (TYPE_1__*,int ,int ,TYPE_1__*) ;

BIO *BIO_push(BIO *b, BIO *bio)
{
    BIO *lb;

    if (b == ((void*)0))
        return bio;
    lb = b;
    while (lb->next_bio != ((void*)0))
        lb = lb->next_bio;
    lb->next_bio = bio;
    if (bio != ((void*)0))
        bio->prev_bio = lb;

    BIO_ctrl(b, BIO_CTRL_PUSH, 0, lb);
    return b;
}
