
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
struct TYPE_3__ {int * intr0; int interrupts; } ;
typedef int RAnalEsilInterrupt ;
typedef TYPE_1__ RAnalEsil ;


 scalar_t__ dict_getu (int ,scalar_t__) ;

__attribute__((used)) static RAnalEsilInterrupt *_get_interrupt(RAnalEsil *esil, ut32 intr_num) {
 return intr_num ?
  (RAnalEsilInterrupt *)dict_getu(esil->interrupts, intr_num) :
  esil->intr0;
}
