; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_len.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_OBJ_NULL = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING_TERSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"object has no len\00", align 1
@mp_type_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"object of type '%s' has no len()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_obj_len(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @mp_obj_len_maybe(i64 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @MP_OBJ_NULL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %12 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @mp_raise_TypeError(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %21

16:                                               ; preds = %10
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @mp_obj_get_type_str(i64 %17)
  %19 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = call i32 @nlr_raise(i32 %19)
  br label %21

21:                                               ; preds = %16, %14
  br label %24

22:                                               ; preds = %1
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %22, %21
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

declare dso_local i64 @mp_obj_len_maybe(i64) #1

declare dso_local i32 @mp_raise_TypeError(i8*) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, i32) #1

declare dso_local i32 @mp_obj_get_type_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
