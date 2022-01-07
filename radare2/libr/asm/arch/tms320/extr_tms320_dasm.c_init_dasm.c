
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int * insn; int * head; int f; scalar_t__ length; scalar_t__ status; int stream; int syntax; } ;
typedef TYPE_1__ tms320_dasm_t ;


 int memcpy (int ,int const*,int ) ;
 int memset (int *,int ,int) ;
 int min (int,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void init_dasm(tms320_dasm_t * dasm, const ut8 * stream, int len)
{
 strcpy(dasm->syntax, "invalid");
 memcpy(dasm->stream, stream, min(sizeof(dasm->stream), len));

 dasm->status = 0;
 dasm->length = 0;

 memset(&dasm->f, 0, sizeof(dasm->f));

 dasm->head = ((void*)0);
 dasm->insn = ((void*)0);
}
