
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sig_len; int * sig; } ;
typedef TYPE_1__ SCT ;


 scalar_t__ NID_undef ;
 scalar_t__ SCT_get_signature_nid (TYPE_1__ const*) ;

int SCT_signature_is_complete(const SCT *sct)
{
    return SCT_get_signature_nid(sct) != NID_undef &&
        sct->sig != ((void*)0) && sct->sig_len > 0;
}
