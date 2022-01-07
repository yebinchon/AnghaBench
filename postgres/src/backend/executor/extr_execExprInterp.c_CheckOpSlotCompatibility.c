
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * tts_ops; } ;
typedef TYPE_3__ TupleTableSlot ;
struct TYPE_7__ {int * kind; int fixed; } ;
struct TYPE_8__ {TYPE_1__ fetch; } ;
struct TYPE_10__ {TYPE_2__ d; } ;
typedef TYPE_4__ ExprEvalStep ;


 int Assert (int) ;
 int TTSOpsBufferHeapTuple ;
 int TTSOpsHeapTuple ;
 int TTSOpsVirtual ;

__attribute__((used)) static void
CheckOpSlotCompatibility(ExprEvalStep *op, TupleTableSlot *slot)
{
}
