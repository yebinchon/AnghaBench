
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ready_state; scalar_t__ doc_state; } ;
typedef scalar_t__ READYSTATE ;
typedef TYPE_1__ DocHost ;



void set_doc_state(DocHost *This, READYSTATE doc_state)
{
    This->doc_state = doc_state;
    if(doc_state > This->ready_state)
        This->ready_state = doc_state;
}
