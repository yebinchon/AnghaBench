; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setHours.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setHours.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_DATE_EXPECTED = common dso_local global i32 0, align 4
@JS_E_MISSING_ARG = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Date_setHours to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Date_setHours(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %9, align 8
  %23 = call %struct.TYPE_5__* @date_this(i32* %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %14, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @JS_E_DATE_EXPECTED, align 4
  %28 = call i32 @throw_type_error(i32* %26, i32 %27, i32* null)
  store i32 %28, i32* %7, align 4
  br label %131

29:                                               ; preds = %6
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @JS_E_MISSING_ARG, align 4
  %35 = call i32 @throw_type_error(i32* %33, i32 %34, i32* null)
  store i32 %35, i32* %7, align 4
  br label %131

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %41 = call double @local_time(i32 %39, %struct.TYPE_5__* %40)
  store double %41, double* %15, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @to_number(i32* %42, i32 %45, double* %16)
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %20, align 4
  %48 = call i64 @FAILED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %20, align 4
  store i32 %51, i32* %7, align 4
  br label %131

52:                                               ; preds = %36
  %53 = load i32, i32* %11, align 4
  %54 = icmp ugt i32 %53, 1
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @to_number(i32* %56, i32 %59, double* %17)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = call i64 @FAILED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %20, align 4
  store i32 %65, i32* %7, align 4
  br label %131

66:                                               ; preds = %55
  br label %70

67:                                               ; preds = %52
  %68 = load double, double* %15, align 8
  %69 = call double @min_from_time(double %68)
  store double %69, double* %17, align 8
  br label %70

70:                                               ; preds = %67, %66
  %71 = load i32, i32* %11, align 4
  %72 = icmp ugt i32 %71, 2
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @to_number(i32* %74, i32 %77, double* %18)
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %20, align 4
  %80 = call i64 @FAILED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %20, align 4
  store i32 %83, i32* %7, align 4
  br label %131

84:                                               ; preds = %73
  br label %88

85:                                               ; preds = %70
  %86 = load double, double* %15, align 8
  %87 = call double @sec_from_time(double %86)
  store double %87, double* %18, align 8
  br label %88

88:                                               ; preds = %85, %84
  %89 = load i32, i32* %11, align 4
  %90 = icmp ugt i32 %89, 3
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @to_number(i32* %92, i32 %95, double* %19)
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %20, align 4
  %98 = call i64 @FAILED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %20, align 4
  store i32 %101, i32* %7, align 4
  br label %131

102:                                              ; preds = %91
  br label %106

103:                                              ; preds = %88
  %104 = load double, double* %15, align 8
  %105 = call double @ms_from_time(double %104)
  store double %105, double* %19, align 8
  br label %106

106:                                              ; preds = %103, %102
  %107 = load double, double* %15, align 8
  %108 = call i32 @day(double %107)
  %109 = load double, double* %16, align 8
  %110 = load double, double* %17, align 8
  %111 = load double, double* %18, align 8
  %112 = load double, double* %19, align 8
  %113 = call i32 @make_time(double %109, double %110, double %111, double %112)
  %114 = call double @make_date(i32 %108, i32 %113)
  store double %114, double* %15, align 8
  %115 = load double, double* %15, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %117 = call i32 @utc(double %115, %struct.TYPE_5__* %116)
  %118 = call i32 @time_clip(i32 %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %13, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %106
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @jsval_number(i32 %126)
  %128 = load i32*, i32** %13, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %123, %106
  %130 = load i32, i32* @S_OK, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %129, %100, %82, %64, %50, %32, %25
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_5__* @date_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local double @local_time(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local double @min_from_time(double) #1

declare dso_local double @sec_from_time(double) #1

declare dso_local double @ms_from_time(double) #1

declare dso_local double @make_date(i32, i32) #1

declare dso_local i32 @day(double) #1

declare dso_local i32 @make_time(double, double, double, double) #1

declare dso_local i32 @time_clip(i32) #1

declare dso_local i32 @utc(double, %struct.TYPE_5__*) #1

declare dso_local i32 @jsval_number(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
