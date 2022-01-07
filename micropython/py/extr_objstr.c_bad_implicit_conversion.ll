; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objstr.c_bad_implicit_conversion.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objstr.c_bad_implicit_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MICROPY_ERROR_REPORTING = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING_TERSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"can't convert to str implicitly\00", align 1
@mp_type_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"can't convert '%q' object to %q implicitly\00", align 1
@MP_QSTR_str = common dso_local global i64 0, align 8
@MP_QSTR_bytes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad_implicit_conversion(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %5 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @mp_raise_TypeError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %26

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.TYPE_2__* @mp_obj_get_type(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @MP_QSTR_str, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i64, i64* @MP_QSTR_bytes, align 8
  br label %22

20:                                               ; preds = %9
  %21 = load i64, i64* @MP_QSTR_str, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i64 [ %19, %18 ], [ %21, %20 ]
  %24 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %14, i64 %23)
  %25 = call i32 @nlr_raise(i32 %24)
  br label %26

26:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @mp_raise_TypeError(i8*) #1

declare dso_local %struct.TYPE_2__* @mp_obj_get_type(i32) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
