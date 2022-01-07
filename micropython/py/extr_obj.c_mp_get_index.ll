; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_get_index.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_get_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MICROPY_ERROR_REPORTING = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING_TERSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"indices must be integers\00", align 1
@mp_type_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%q indices must be integers, not %s\00", align 1
@mp_type_IndexError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%q index out of range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_get_index(%struct.TYPE_3__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @mp_obj_is_small_int(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @MP_OBJ_SMALL_INT_VALUE(i32 %14)
  store i64 %15, i64* %9, align 8
  br label %36

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @mp_obj_get_int_maybe(i32 %17, i64* %9)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %22 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @mp_raise_TypeError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %34

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @mp_obj_get_type_str(i32 %30)
  %32 = call i32 (i32*, i8*, i32, ...) @mp_obj_new_exception_msg_varg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %31)
  %33 = call i32 @nlr_raise(i32 %32)
  br label %34

34:                                               ; preds = %26, %24
  br label %35

35:                                               ; preds = %34, %16
  br label %36

36:                                               ; preds = %35, %13
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i64, i64* %9, align 8
  %48 = icmp ult i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i64 0, i64* %9, align 8
  br label %57

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %54, %50
  br label %57

57:                                               ; preds = %56, %49
  br label %79

58:                                               ; preds = %43
  %59 = load i64, i64* %9, align 8
  %60 = icmp ult i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61, %58
  %66 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %67 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @mp_raise_msg(i32* @mp_type_IndexError, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %77

71:                                               ; preds = %65
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32*, i8*, i32, ...) @mp_obj_new_exception_msg_varg(i32* @mp_type_IndexError, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = call i32 @nlr_raise(i32 %75)
  br label %77

77:                                               ; preds = %71, %69
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %57
  %80 = load i64, i64* %9, align 8
  ret i64 %80
}

declare dso_local i64 @mp_obj_is_small_int(i32) #1

declare dso_local i64 @MP_OBJ_SMALL_INT_VALUE(i32) #1

declare dso_local i32 @mp_obj_get_int_maybe(i32, i64*) #1

declare dso_local i32 @mp_raise_TypeError(i8*) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, i32, ...) #1

declare dso_local i32 @mp_obj_get_type_str(i32) #1

declare dso_local i32 @mp_raise_msg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
