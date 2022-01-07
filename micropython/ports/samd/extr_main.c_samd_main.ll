; ModuleID = '/home/carl/AnghaBench/micropython/ports/samd/extr_main.c_samd_main.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/samd/extr_main.c_samd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_estack = common dso_local global i32 0, align 4
@_sstack = common dso_local global i32 0, align 4
@_sheap = common dso_local global i32 0, align 4
@_eheap = common dso_local global i32 0, align 4
@mp_sys_path = common dso_local global i32 0, align 4
@MP_QSTR_ = common dso_local global i32 0, align 4
@mp_sys_argv = common dso_local global i32 0, align 4
@pyexec_mode_kind = common dso_local global i64 0, align 8
@PYEXEC_MODE_RAW_REPL = common dso_local global i64 0, align 8
@MP_PYTHON_PRINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MPY: soft reboot\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @samd_main() #0 {
  %1 = call i32 @mp_stack_set_top(i32* @_estack)
  %2 = call i32 @mp_stack_set_limit(i32 trunc (i64 sub nsw (i64 sdiv exact (i64 sub (i64 ptrtoint (i32* @_estack to i64), i64 ptrtoint (i32* @_sstack to i64)), i64 4), i64 1024) to i32))
  br label %3

3:                                                ; preds = %31, %0
  %4 = call i32 @gc_init(i32* @_sheap, i32* @_eheap)
  %5 = call i32 (...) @mp_init()
  %6 = load i32, i32* @mp_sys_path, align 4
  %7 = call i32 @MP_OBJ_TO_PTR(i32 %6)
  %8 = call i32 @mp_obj_list_init(i32 %7, i32 0)
  %9 = load i32, i32* @mp_sys_path, align 4
  %10 = load i32, i32* @MP_QSTR_, align 4
  %11 = call i32 @MP_OBJ_NEW_QSTR(i32 %10)
  %12 = call i32 @mp_obj_list_append(i32 %9, i32 %11)
  %13 = load i32, i32* @mp_sys_argv, align 4
  %14 = call i32 @MP_OBJ_TO_PTR(i32 %13)
  %15 = call i32 @mp_obj_list_init(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %30, %3
  %17 = load i64, i64* @pyexec_mode_kind, align 8
  %18 = load i64, i64* @PYEXEC_MODE_RAW_REPL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = call i64 (...) @pyexec_raw_repl()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %31

24:                                               ; preds = %20
  br label %30

25:                                               ; preds = %16
  %26 = call i64 (...) @pyexec_friendly_repl()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %31

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %24
  br label %16

31:                                               ; preds = %28, %23
  %32 = load i32, i32* @MP_PYTHON_PRINTER, align 4
  %33 = call i32 @mp_printf(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 (...) @gc_sweep_all()
  %35 = call i32 (...) @mp_deinit()
  br label %3
}

declare dso_local i32 @mp_stack_set_top(i32*) #1

declare dso_local i32 @mp_stack_set_limit(i32) #1

declare dso_local i32 @gc_init(i32*, i32*) #1

declare dso_local i32 @mp_init(...) #1

declare dso_local i32 @mp_obj_list_init(i32, i32) #1

declare dso_local i32 @MP_OBJ_TO_PTR(i32) #1

declare dso_local i32 @mp_obj_list_append(i32, i32) #1

declare dso_local i32 @MP_OBJ_NEW_QSTR(i32) #1

declare dso_local i64 @pyexec_raw_repl(...) #1

declare dso_local i64 @pyexec_friendly_repl(...) #1

declare dso_local i32 @mp_printf(i32, i8*) #1

declare dso_local i32 @gc_sweep_all(...) #1

declare dso_local i32 @mp_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
