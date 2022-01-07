; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_argcheck.c_mp_arg_check_num_sig.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_argcheck.c_mp_arg_check_num_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MICROPY_ERROR_REPORTING = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING_TERSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"function doesn't take keyword arguments\00", align 1
@mp_type_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"function takes %d positional arguments but %d were given\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"function missing %d required positional arguments\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"function expected at most %d arguments, got %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_arg_check_num_sig(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 1
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 17
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 1
  %17 = and i32 %16, 65535
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %26 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (...) @mp_arg_error_terse_mismatch()
  br label %32

30:                                               ; preds = %24
  %31 = call i32 @mp_raise_TypeError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %21, %3
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %43 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (...) @mp_arg_error_terse_mismatch()
  br label %52

47:                                               ; preds = %41
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i32 (i32*, i8*, i64, ...) @mp_obj_new_exception_msg_varg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %49)
  %51 = call i32 @nlr_raise(i32 %50)
  br label %52

52:                                               ; preds = %47, %45
  br label %53

53:                                               ; preds = %52, %37
  br label %89

54:                                               ; preds = %33
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %60 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 (...) @mp_arg_error_terse_mismatch()
  br label %70

64:                                               ; preds = %58
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %4, align 8
  %67 = sub i64 %65, %66
  %68 = call i32 (i32*, i8*, i64, ...) @mp_obj_new_exception_msg_varg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = call i32 @nlr_raise(i32 %68)
  br label %70

70:                                               ; preds = %64, %62
  br label %88

71:                                               ; preds = %54
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %77 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 (...) @mp_arg_error_terse_mismatch()
  br label %86

81:                                               ; preds = %75
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %4, align 8
  %84 = call i32 (i32*, i8*, i64, ...) @mp_obj_new_exception_msg_varg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %82, i64 %83)
  %85 = call i32 @nlr_raise(i32 %84)
  br label %86

86:                                               ; preds = %81, %79
  br label %87

87:                                               ; preds = %86, %71
  br label %88

88:                                               ; preds = %87, %70
  br label %89

89:                                               ; preds = %88, %53
  ret void
}

declare dso_local i32 @mp_arg_error_terse_mismatch(...) #1

declare dso_local i32 @mp_raise_TypeError(i8*) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
