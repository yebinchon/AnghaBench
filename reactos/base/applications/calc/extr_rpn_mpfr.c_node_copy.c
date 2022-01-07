
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mf; } ;
struct TYPE_6__ {int operation; TYPE_1__ number; } ;
typedef TYPE_2__ calc_node_t ;


 int MPFR_DEFAULT_RND ;
 int mpfr_set (int ,int ,int ) ;

__attribute__((used)) static void node_copy(calc_node_t *dst, calc_node_t *src)
{
    mpfr_set(dst->number.mf, src->number.mf, MPFR_DEFAULT_RND);
    dst->operation = src->operation;
}
