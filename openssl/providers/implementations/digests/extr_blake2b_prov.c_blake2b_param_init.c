
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fanout; int depth; int personal; int salt; int reserved; scalar_t__ inner_length; scalar_t__ node_depth; int node_offset; int leaf_length; scalar_t__ key_length; int digest_length; } ;
typedef TYPE_1__ BLAKE2B_PARAM ;


 int BLAKE2B_DIGEST_LENGTH ;
 int memset (int ,int ,int) ;
 int store32 (int ,int ) ;
 int store64 (int ,int ) ;

void blake2b_param_init(BLAKE2B_PARAM *P)
{
    P->digest_length = BLAKE2B_DIGEST_LENGTH;
    P->key_length = 0;
    P->fanout = 1;
    P->depth = 1;
    store32(P->leaf_length, 0);
    store64(P->node_offset, 0);
    P->node_depth = 0;
    P->inner_length = 0;
    memset(P->reserved, 0, sizeof(P->reserved));
    memset(P->salt, 0, sizeof(P->salt));
    memset(P->personal, 0, sizeof(P->personal));
}
