; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_subscr.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_subscr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (i64, i64, i64)* }

@MP_OBJ_NULL = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING_TERSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"object doesn't support item deletion\00", align 1
@mp_type_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"'%s' object doesn't support item deletion\00", align 1
@MP_OBJ_SENTINEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"object isn't subscriptable\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"'%s' object isn't subscriptable\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"object doesn't support item assignment\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"'%s' object doesn't support item assignment\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_obj_subscr(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call %struct.TYPE_3__* @mp_obj_get_type(i64 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %13, align 8
  %15 = icmp ne i64 (i64, i64, i64)* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 %19(i64 %20, i64 %21, i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @MP_OBJ_NULL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %4, align 8
  br label %75

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @MP_OBJ_NULL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %36 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @mp_raise_TypeError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %45

40:                                               ; preds = %34
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @mp_obj_get_type_str(i64 %41)
  %43 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = call i32 @nlr_raise(i32 %43)
  br label %45

45:                                               ; preds = %40, %38
  br label %75

46:                                               ; preds = %30
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @MP_OBJ_SENTINEL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %52 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @mp_raise_TypeError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %61

56:                                               ; preds = %50
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @mp_obj_get_type_str(i64 %57)
  %59 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = call i32 @nlr_raise(i32 %59)
  br label %61

61:                                               ; preds = %56, %54
  br label %74

62:                                               ; preds = %46
  %63 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %64 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @mp_raise_TypeError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %73

68:                                               ; preds = %62
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @mp_obj_get_type_str(i64 %69)
  %71 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = call i32 @nlr_raise(i32 %71)
  br label %73

73:                                               ; preds = %68, %66
  br label %74

74:                                               ; preds = %73, %61
  br label %75

75:                                               ; preds = %27, %74, %45
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local %struct.TYPE_3__* @mp_obj_get_type(i64) #1

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
