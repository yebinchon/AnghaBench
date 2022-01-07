; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_import_from.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_import_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"import from %p %s\0A\00", align 1
@MP_OBJ_NULL = common dso_local global i64 0, align 8
@mp_type_ImportError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot import name %q\00", align 1
@MP_QSTR___name__ = common dso_local global i32 0, align 4
@mp_const_true = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_import_from(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i64], align 16
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i8* @qstr_str(i32 %7)
  %9 = call i32 @DEBUG_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %6, i8* %8)
  %10 = load i64, i64* %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %13 = call i32 @mp_load_method_maybe(i64 %10, i32 %11, i64* %12)
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MP_OBJ_NULL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_ImportError, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call i32 @nlr_raise(i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %25 = load i64, i64* %24, align 16
  %26 = load i64, i64* @MP_OBJ_NULL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %30 = load i64, i64* %29, align 16
  ret i64 %30

31:                                               ; preds = %23
  br label %19
}

declare dso_local i32 @DEBUG_printf(i8*, i64, i8*) #1

declare dso_local i8* @qstr_str(i32) #1

declare dso_local i32 @mp_load_method_maybe(i64, i32, i64*) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
