
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum aarch64_operand_error_kind { ____Placeholder_aarch64_operand_error_kind } aarch64_operand_error_kind ;
struct TYPE_3__ {int kind; int index; char const* error; } ;
typedef TYPE_1__ aarch64_operand_error ;



__attribute__((used)) static inline void
set_error (aarch64_operand_error *mismatch_detail,
    enum aarch64_operand_error_kind kind, int idx,
    const char* error)
{
  if (mismatch_detail == ((void*)0))
    return;
  mismatch_detail->kind = kind;
  mismatch_detail->index = idx;
  mismatch_detail->error = error;
}
