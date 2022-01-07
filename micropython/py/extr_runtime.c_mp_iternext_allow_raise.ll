; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_iternext_allow_raise.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_iternext_allow_raise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (i64)* }

@MP_QSTR___next__ = common dso_local global i32 0, align 4
@MP_OBJ_NULL = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING_TERSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"object not an iterator\00", align 1
@mp_type_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"'%s' object isn't an iterator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_iternext_allow_raise(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [2 x i64], align 16
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call %struct.TYPE_3__* @mp_obj_get_type(i64 %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64 (i64)*, i64 (i64)** %9, align 8
  %11 = icmp ne i64 (i64)* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64 (i64)*, i64 (i64)** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i64 %15(i64 %16)
  store i64 %17, i64* %2, align 8
  br label %43

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @MP_QSTR___next__, align 4
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %22 = call i32 @mp_load_method_maybe(i64 %19, i32 %20, i64* %21)
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %24 = load i64, i64* %23, align 16
  %25 = load i64, i64* @MP_OBJ_NULL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %29 = call i64 @mp_call_method_n_kw(i32 0, i32 0, i64* %28)
  store i64 %29, i64* %2, align 8
  br label %43

30:                                               ; preds = %18
  %31 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %32 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @mp_raise_TypeError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %41

36:                                               ; preds = %30
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @mp_obj_get_type_str(i64 %37)
  %39 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = call i32 @nlr_raise(i32 %39)
  br label %41

41:                                               ; preds = %36, %34
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %12, %27, %42
  %44 = load i64, i64* %2, align 8
  ret i64 %44
}

declare dso_local %struct.TYPE_3__* @mp_obj_get_type(i64) #1

declare dso_local i32 @mp_load_method_maybe(i64, i32, i64*) #1

declare dso_local i64 @mp_call_method_n_kw(i32, i32, i64*) #1

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
