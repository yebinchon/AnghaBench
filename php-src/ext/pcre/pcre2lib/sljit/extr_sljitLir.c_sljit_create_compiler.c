
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_memory_fragment {int scratches; int saveds; int fscratches; int fsaveds; int local_size; int args; int cpool_diff; void* delay_slot; int * cpool; int * cpool_unique; struct sljit_memory_fragment* abuf; struct sljit_memory_fragment* buf; scalar_t__ used_size; int * next; void* allocator_data; int error; } ;
struct sljit_compiler {int scratches; int saveds; int fscratches; int fsaveds; int local_size; int args; int cpool_diff; void* delay_slot; int * cpool; int * cpool_unique; struct sljit_compiler* abuf; struct sljit_compiler* buf; scalar_t__ used_size; int * next; void* allocator_data; int error; } ;
typedef int sljit_uw ;
typedef int sljit_u8 ;
typedef int sljit_u32 ;
typedef int sljit_u16 ;
typedef int sljit_sw ;
typedef int sljit_s8 ;
typedef int sljit_s32 ;
typedef int sljit_s16 ;
typedef int sljit_p ;


 int ABUF_SIZE ;
 int BUF_SIZE ;
 int CPOOL_SIZE ;
 int SLJIT_COMPILE_ASSERT (int,int ) ;
 int SLJIT_EQUAL ;
 int SLJIT_EQUAL_F64 ;
 scalar_t__ SLJIT_F32_OP ;
 int SLJIT_FREE (struct sljit_memory_fragment*,void*) ;
 scalar_t__ SLJIT_I32_OP ;
 int SLJIT_JUMP ;
 int SLJIT_LESS ;
 scalar_t__ SLJIT_MALLOC (int,void*) ;
 scalar_t__ SLJIT_REWRITABLE_JUMP ;
 int SLJIT_SUCCESS ;
 int SLJIT_ZEROMEM (struct sljit_memory_fragment*,int) ;
 void* UNMOVABLE_INS ;
 int compiler_initialized ;
 int conditional_flags_must_be_even_numbers ;
 int init_compiler () ;
 int int_op_and_single_op_must_be_the_same ;
 int invalid_integer_types ;
 int rewritable_jump_and_single_op_must_not_be_the_same ;

struct sljit_compiler* sljit_create_compiler(void *allocator_data)
{
 struct sljit_compiler *compiler = (struct sljit_compiler*)SLJIT_MALLOC(sizeof(struct sljit_compiler), allocator_data);
 if (!compiler)
  return ((void*)0);
 SLJIT_ZEROMEM(compiler, sizeof(struct sljit_compiler));

 SLJIT_COMPILE_ASSERT(
  sizeof(sljit_s8) == 1 && sizeof(sljit_u8) == 1
  && sizeof(sljit_s16) == 2 && sizeof(sljit_u16) == 2
  && sizeof(sljit_s32) == 4 && sizeof(sljit_u32) == 4
  && (sizeof(sljit_p) == 4 || sizeof(sljit_p) == 8)
  && sizeof(sljit_p) <= sizeof(sljit_sw)
  && (sizeof(sljit_sw) == 4 || sizeof(sljit_sw) == 8)
  && (sizeof(sljit_uw) == 4 || sizeof(sljit_uw) == 8),
  invalid_integer_types);
 SLJIT_COMPILE_ASSERT(SLJIT_I32_OP == SLJIT_F32_OP,
  int_op_and_single_op_must_be_the_same);
 SLJIT_COMPILE_ASSERT(SLJIT_REWRITABLE_JUMP != SLJIT_F32_OP,
  rewritable_jump_and_single_op_must_not_be_the_same);
 SLJIT_COMPILE_ASSERT(!(SLJIT_EQUAL & 0x1) && !(SLJIT_LESS & 0x1) && !(SLJIT_EQUAL_F64 & 0x1) && !(SLJIT_JUMP & 0x1),
  conditional_flags_must_be_even_numbers);


 compiler->error = SLJIT_SUCCESS;

 compiler->allocator_data = allocator_data;
 compiler->buf = (struct sljit_memory_fragment*)SLJIT_MALLOC(BUF_SIZE, allocator_data);
 compiler->abuf = (struct sljit_memory_fragment*)SLJIT_MALLOC(ABUF_SIZE, allocator_data);

 if (!compiler->buf || !compiler->abuf) {
  if (compiler->buf)
   SLJIT_FREE(compiler->buf, allocator_data);
  if (compiler->abuf)
   SLJIT_FREE(compiler->abuf, allocator_data);
  SLJIT_FREE(compiler, allocator_data);
  return ((void*)0);
 }

 compiler->buf->next = ((void*)0);
 compiler->buf->used_size = 0;
 compiler->abuf->next = ((void*)0);
 compiler->abuf->used_size = 0;

 compiler->scratches = -1;
 compiler->saveds = -1;
 compiler->fscratches = -1;
 compiler->fsaveds = -1;
 compiler->local_size = -1;
 return compiler;
}
