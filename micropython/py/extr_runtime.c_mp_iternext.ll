; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_iternext.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_iternext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (i64)* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32* }

@MP_QSTR___next__ = common dso_local global i32 0, align 4
@MP_OBJ_NULL = common dso_local global i64 0, align 8
@mp_type_StopIteration = common dso_local global i32 0, align 4
@MP_OBJ_STOP_ITERATION = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING_TERSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"object not an iterator\00", align 1
@mp_type_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"'%s' object isn't an iterator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_iternext(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca [2 x i64], align 16
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = call i32 (...) @MP_STACK_CHECK()
  %9 = load i64, i64* %3, align 8
  %10 = call %struct.TYPE_7__* @mp_obj_get_type(i64 %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64 (i64)*, i64 (i64)** %12, align 8
  %14 = icmp ne i64 (i64)* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64 (i64)*, i64 (i64)** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i64 %18(i64 %19)
  store i64 %20, i64* %2, align 8
  br label %69

21:                                               ; preds = %1
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* @MP_QSTR___next__, align 4
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %25 = call i32 @mp_load_method_maybe(i64 %22, i32 %23, i64* %24)
  %26 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %27 = load i64, i64* %26, align 16
  %28 = load i64, i64* @MP_OBJ_NULL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %21
  %31 = call i64 @nlr_push(%struct.TYPE_6__* %6)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %35 = call i64 @mp_call_method_n_kw(i32 0, i32 0, i64* %34)
  store i64 %35, i64* %7, align 8
  %36 = call i32 (...) @nlr_pop()
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %2, align 8
  br label %69

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_8__*
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @MP_OBJ_FROM_PTR(i32* %43)
  %45 = call i32 @MP_OBJ_FROM_PTR(i32* @mp_type_StopIteration)
  %46 = call i64 @mp_obj_is_subclass_fast(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i64, i64* @MP_OBJ_STOP_ITERATION, align 8
  store i64 %49, i64* %2, align 8
  br label %69

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @nlr_jump(i64 %52)
  br label %54

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54
  br label %68

56:                                               ; preds = %21
  %57 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %58 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @mp_raise_TypeError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %67

62:                                               ; preds = %56
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @mp_obj_get_type_str(i64 %63)
  %65 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = call i32 @nlr_raise(i32 %65)
  br label %67

67:                                               ; preds = %62, %60
  br label %68

68:                                               ; preds = %67, %55
  br label %69

69:                                               ; preds = %15, %33, %48, %68
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local i32 @MP_STACK_CHECK(...) #1

declare dso_local %struct.TYPE_7__* @mp_obj_get_type(i64) #1

declare dso_local i32 @mp_load_method_maybe(i64, i32, i64*) #1

declare dso_local i64 @nlr_push(%struct.TYPE_6__*) #1

declare dso_local i64 @mp_call_method_n_kw(i32, i32, i64*) #1

declare dso_local i32 @nlr_pop(...) #1

declare dso_local i64 @mp_obj_is_subclass_fast(i32, i32) #1

declare dso_local i32 @MP_OBJ_FROM_PTR(i32*) #1

declare dso_local i32 @nlr_jump(i64) #1

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
