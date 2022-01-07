; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_unpack_sequence.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_unpack_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_type_tuple = common dso_local global i32 0, align 4
@mp_type_list = common dso_local global i32 0, align 4
@MP_OBJ_STOP_ITERATION = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING_TERSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"wrong number of values to unpack\00", align 1
@mp_type_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"need more than %d values to unpack\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"too many values to unpack (expected %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_unpack_sequence(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @mp_obj_is_type(i64 %13, i32* @mp_type_tuple)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @mp_obj_is_type(i64 %17, i32* @mp_type_list)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %16, %3
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @mp_obj_get_array(i64 %21, i64* %7, i64** %8)
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %86

27:                                               ; preds = %20
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %98

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub i64 %40, 1
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds i64, i64* %39, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %45, i64* %48, align 8
  br label %49

49:                                               ; preds = %38
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %34

52:                                               ; preds = %34
  br label %85

53:                                               ; preds = %16
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @mp_getiter(i64 %54, i32* %10)
  store i64 %55, i64* %11, align 8
  store i64 0, i64* %7, align 8
  br label %56

56:                                               ; preds = %75, %53
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @mp_iternext(i64 %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @MP_OBJ_STOP_ITERATION, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %86

67:                                               ; preds = %60
  %68 = load i64, i64* %12, align 8
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %5, align 8
  %71 = sub i64 %70, 1
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %71, %72
  %74 = getelementptr inbounds i64, i64* %69, i64 %73
  store i64 %68, i64* %74, align 8
  br label %75

75:                                               ; preds = %67
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %7, align 8
  br label %56

78:                                               ; preds = %56
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @mp_iternext(i64 %79)
  %81 = load i64, i64* @MP_OBJ_STOP_ITERATION, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %98

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %52
  br label %109

86:                                               ; preds = %66, %26
  %87 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %88 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %97

92:                                               ; preds = %86
  %93 = load i64, i64* %7, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_ValueError, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = call i32 @nlr_raise(i32 %95)
  br label %97

97:                                               ; preds = %92, %90
  br label %98

98:                                               ; preds = %97, %83, %31
  %99 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %100 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %109

104:                                              ; preds = %98
  %105 = load i64, i64* %5, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_ValueError, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = call i32 @nlr_raise(i32 %107)
  br label %109

109:                                              ; preds = %85, %104, %102
  ret void
}

declare dso_local i64 @mp_obj_is_type(i64, i32*) #1

declare dso_local i32 @mp_obj_get_array(i64, i64*, i64**) #1

declare dso_local i64 @mp_getiter(i64, i32*) #1

declare dso_local i64 @mp_iternext(i64) #1

declare dso_local i32 @mp_raise_ValueError(i8*) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
