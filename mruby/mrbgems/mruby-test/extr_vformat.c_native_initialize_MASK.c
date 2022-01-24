#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;
struct TYPE_3__ {int type; int d; char* s; int /*<<< orphan*/  C; int /*<<< orphan*/  n; scalar_t__ i; int /*<<< orphan*/  f; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ VFNative ;
typedef  int VFArgumentType ;

/* Variables and functions */
#define  ARG_C 134 
#define  ARG_c 133 
#define  ARG_d 132 
#define  ARG_f 131 
#define  ARG_i 130 
#define  ARG_n 129 
#define  ARG_s 128 
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  native_data_type ; 

__attribute__((used)) static mrb_value
FUNC11(mrb_state *mrb, mrb_value self)
{
  VFNative data, *datap;
  mrb_int type;
  mrb_value obj;

  FUNC7(mrb, "io", &type, &obj);
  data.type = (VFArgumentType)type;
  switch (data.type) {
    case ARG_c: data.c = FUNC1(obj)[0]; break;
    case ARG_d: data.d = (int)FUNC5(obj); break;
    case ARG_f: data.f = FUNC6(obj); break;
    case ARG_i: data.i = FUNC5(obj); break;
/*    case ARG_l: data.l = (size_t)mrb_fixnum(obj); break;*/
    case ARG_n: data.n = FUNC10(obj); break;
    case ARG_s: data.s = (char*)FUNC8(mrb, FUNC0(obj) + 1);
                FUNC2(data.s, FUNC1(obj), FUNC0(obj));
                data.s[FUNC0(obj)] = '\0'; break;
    case ARG_C: data.C = FUNC3(obj); break;
    default: FUNC9(mrb, E_ARGUMENT_ERROR, "unknown type");
  }
  datap = (VFNative*)FUNC8(mrb, sizeof(VFNative));
  *datap = data;
  FUNC4(self, datap, &native_data_type);
  return self;
}