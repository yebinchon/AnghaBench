
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int mf; } ;
struct TYPE_11__ {TYPE_6__ number; } ;
struct TYPE_9__ {int mf; } ;
struct TYPE_8__ {int mf; } ;
struct TYPE_14__ {TYPE_4__ memory; TYPE_2__ prev; TYPE_1__ code; } ;
struct TYPE_10__ {int mf; } ;
struct TYPE_12__ {TYPE_3__ number; } ;


 TYPE_7__ calc ;
 int mpf_set_default_prec (int) ;
 int mpfr_init (int ) ;
 int mpfr_set_default_prec (int) ;
 int rpn_zero (TYPE_6__*) ;
 int * stack ;
 TYPE_5__ temp ;

void start_rpn_engine(void)
{
    mpf_set_default_prec(512);
    mpfr_set_default_prec(512);
    stack = ((void*)0);
    mpfr_init(calc.code.mf);
    mpfr_init(calc.prev.mf);
    mpfr_init(calc.memory.number.mf);
    mpfr_init(temp.number.mf);
    rpn_zero(&calc.memory.number);
}
