; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setYear.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setYear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_DATE_EXPECTED = common dso_local global i32 0, align 4
@JS_E_MISSING_ARG = common dso_local global i32 0, align 4
@NAN = common dso_local global double 0.000000e+00, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Date_setYear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Date_setYear(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %9, align 8
  %20 = call %struct.TYPE_5__* @date_this(i32* %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %14, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @JS_E_DATE_EXPECTED, align 4
  %25 = call i32 @throw_type_error(i32* %23, i32 %24, i32* null)
  store i32 %25, i32* %7, align 4
  br label %111

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @JS_E_MISSING_ARG, align 4
  %32 = call i32 @throw_type_error(i32* %30, i32 %31, i32* null)
  store i32 %32, i32* %7, align 4
  br label %111

33:                                               ; preds = %26
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %38 = call double @local_time(double %36, %struct.TYPE_5__* %37)
  store double %38, double* %15, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @to_number(i32* %39, i32 %42, double* %16)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = call i64 @FAILED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %17, align 4
  store i32 %48, i32* %7, align 4
  br label %111

49:                                               ; preds = %33
  %50 = load double, double* %16, align 8
  %51 = call i64 @isnan(double %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load double, double* %16, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store double %54, double* %56, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load double, double* @NAN, align 8
  %61 = call i32 @jsval_number(double %60)
  %62 = load i32*, i32** %13, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i32, i32* @S_OK, align 4
  store i32 %64, i32* %7, align 4
  br label %111

65:                                               ; preds = %49
  %66 = load double, double* %16, align 8
  %67 = fcmp oge double %66, 0.000000e+00
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load double, double* %16, align 8
  %70 = call double @llvm.floor.f64(double %69)
  br label %76

71:                                               ; preds = %65
  %72 = load double, double* %16, align 8
  %73 = fneg double %72
  %74 = call double @llvm.floor.f64(double %73)
  %75 = fneg double %74
  br label %76

76:                                               ; preds = %71, %68
  %77 = phi double [ %70, %68 ], [ %75, %71 ]
  store double %77, double* %16, align 8
  %78 = load double, double* %16, align 8
  %79 = fcmp olt double -1.000000e+00, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load double, double* %16, align 8
  %82 = fcmp olt double %81, 1.000000e+02
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load double, double* %16, align 8
  %85 = fadd double %84, 1.900000e+03
  store double %85, double* %16, align 8
  br label %86

86:                                               ; preds = %83, %80, %76
  %87 = load double, double* %16, align 8
  %88 = load double, double* %15, align 8
  %89 = call i32 @month_from_time(double %88)
  %90 = load double, double* %15, align 8
  %91 = call i32 @date_from_time(double %90)
  %92 = call i32 @make_day(double %87, i32 %89, i32 %91)
  %93 = load double, double* %15, align 8
  %94 = call i32 @time_within_day(double %93)
  %95 = call i32 @make_date(i32 %92, i32 %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %97 = call i32 @utc(i32 %95, %struct.TYPE_5__* %96)
  %98 = call double @time_clip(i32 %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store double %98, double* %100, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %86
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load double, double* %105, align 8
  %107 = call i32 @jsval_number(double %106)
  %108 = load i32*, i32** %13, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %86
  %110 = load i32, i32* @S_OK, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %109, %63, %47, %29, %22
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_5__* @date_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local double @local_time(double, %struct.TYPE_5__*) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @jsval_number(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

declare dso_local double @time_clip(i32) #1

declare dso_local i32 @utc(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @make_date(i32, i32) #1

declare dso_local i32 @make_day(double, i32, i32) #1

declare dso_local i32 @month_from_time(double) #1

declare dso_local i32 @date_from_time(double) #1

declare dso_local i32 @time_within_day(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
