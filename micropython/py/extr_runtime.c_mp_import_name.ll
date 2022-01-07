; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_import_name.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_import_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"import name '%s' level=%d\0A\00", align 1
@mp_const_none = common dso_local global i32 0, align 4
@MP_MAP_LOOKUP = common dso_local global i32 0, align 4
@MP_QSTR___import__ = common dso_local global i32 0, align 4
@mp_module_builtins_override_dict = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_import_name(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @qstr_str(i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @MP_OBJ_SMALL_INT_VALUE(i32 %10)
  %12 = call i32 @DEBUG_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @MP_OBJ_NEW_QSTR(i32 %13)
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 %14, i32* %15, align 16
  %16 = load i32, i32* @mp_const_none, align 4
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @mp_const_none, align 4
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 %22, i32* %23, align 16
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %25 = call i32 @mp_builtin___import__(i32 5, i32* %24)
  ret i32 %25
}

declare dso_local i32 @DEBUG_printf(i8*, i32, i32) #1

declare dso_local i32 @qstr_str(i32) #1

declare dso_local i32 @MP_OBJ_SMALL_INT_VALUE(i32) #1

declare dso_local i32 @MP_OBJ_NEW_QSTR(i32) #1

declare dso_local i32 @mp_builtin___import__(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
