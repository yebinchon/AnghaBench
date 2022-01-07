
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int line_start; int filename; } ;
typedef TYPE_1__ zend_op_array ;
struct TYPE_6__ {uintptr_t mcaddr; char const* name; char* filename; int objsize; int obj; int lineno; scalar_t__ szmcode; } ;
typedef TYPE_2__ zend_gdbjit_ctx ;
typedef scalar_t__ uint32_t ;


 char* ZSTR_VAL (int ) ;
 int zend_gdb_register_code (int *,int ) ;
 int zend_gdbjit_buildobj (TYPE_2__*) ;

__attribute__((used)) static int zend_jit_gdb_register(const char *name,
                                 const zend_op_array *op_array,
                                 const void *start,
                                 size_t size)
{
 zend_gdbjit_ctx ctx;

 ctx.mcaddr = (uintptr_t)start;
 ctx.szmcode = (uint32_t)size;
 ctx.name = name;
 ctx.filename = op_array ? ZSTR_VAL(op_array->filename) : "unknown";
 ctx.lineno = op_array ? op_array->line_start : 0;

 zend_gdbjit_buildobj(&ctx);

 return zend_gdb_register_code(&ctx.obj, ctx.objsize);
}
