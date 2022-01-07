; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_builtinimport.c_mp_builtin___import__.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_builtinimport.c_mp_builtin___import__.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"relative import\00", align 1
@MP_OBJ_NULL = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING_TERSE = common dso_local global i64 0, align 8
@mp_type_ImportError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"module not found\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"no module named '%q'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_builtin___import__(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp uge i64 %8, 5
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 4
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @MP_OBJ_SMALL_INT_VALUE(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 @mp_raise_NotImplementedError(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %10, %2
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @mp_obj_str_get_qstr(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @mp_module_get(i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @MP_OBJ_NULL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %3, align 8
  br label %40

30:                                               ; preds = %18
  %31 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %32 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @mp_raise_msg(i32* @mp_type_ImportError, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_ImportError, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = call i32 @nlr_raise(i32 %38)
  br label %40

40:                                               ; preds = %28, %36, %34
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i64 @MP_OBJ_SMALL_INT_VALUE(i64) #1

declare dso_local i32 @mp_raise_NotImplementedError(i8*) #1

declare dso_local i32 @mp_obj_str_get_qstr(i64) #1

declare dso_local i64 @mp_module_get(i32) #1

declare dso_local i32 @mp_raise_msg(i32*, i8*) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
