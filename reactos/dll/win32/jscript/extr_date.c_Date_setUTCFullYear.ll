; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setUTCFullYear.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setUTCFullYear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_DATE_EXPECTED = common dso_local global i32 0, align 4
@JS_E_MISSING_ARG = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Date_setUTCFullYear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Date_setUTCFullYear(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %9, align 8
  %22 = call %struct.TYPE_3__* @date_this(i32* %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %14, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @JS_E_DATE_EXPECTED, align 4
  %27 = call i32 @throw_type_error(i32* %25, i32 %26, i32* null)
  store i32 %27, i32* %7, align 4
  br label %107

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @JS_E_MISSING_ARG, align 4
  %34 = call i32 @throw_type_error(i32* %32, i32 %33, i32* null)
  store i32 %34, i32* %7, align 4
  br label %107

35:                                               ; preds = %28
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  store double %38, double* %15, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @to_number(i32* %39, i32 %42, double* %16)
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %19, align 4
  %45 = call i64 @FAILED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %19, align 4
  store i32 %48, i32* %7, align 4
  br label %107

49:                                               ; preds = %35
  %50 = load i32, i32* %11, align 4
  %51 = icmp ugt i32 %50, 1
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @to_number(i32* %53, i32 %56, double* %17)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = call i64 @FAILED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %19, align 4
  store i32 %62, i32* %7, align 4
  br label %107

63:                                               ; preds = %52
  br label %67

64:                                               ; preds = %49
  %65 = load double, double* %15, align 8
  %66 = call double @month_from_time(double %65)
  store double %66, double* %17, align 8
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i32, i32* %11, align 4
  %69 = icmp ugt i32 %68, 2
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @to_number(i32* %71, i32 %74, double* %18)
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = call i64 @FAILED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %19, align 4
  store i32 %80, i32* %7, align 4
  br label %107

81:                                               ; preds = %70
  br label %85

82:                                               ; preds = %67
  %83 = load double, double* %15, align 8
  %84 = call double @date_from_time(double %83)
  store double %84, double* %18, align 8
  br label %85

85:                                               ; preds = %82, %81
  %86 = load double, double* %16, align 8
  %87 = load double, double* %17, align 8
  %88 = load double, double* %18, align 8
  %89 = call i32 @make_day(double %86, double %87, double %88)
  %90 = load double, double* %15, align 8
  %91 = call i32 @time_within_day(double %90)
  %92 = call double @make_date(i32 %89, i32 %91)
  store double %92, double* %15, align 8
  %93 = load double, double* %15, align 8
  %94 = call double @time_clip(double %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store double %94, double* %96, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %85
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load double, double* %101, align 8
  %103 = call i32 @jsval_number(double %102)
  %104 = load i32*, i32** %13, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %85
  %106 = load i32, i32* @S_OK, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %105, %79, %61, %47, %31, %24
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_3__* @date_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local double @month_from_time(double) #1

declare dso_local double @date_from_time(double) #1

declare dso_local double @make_date(i32, i32) #1

declare dso_local i32 @make_day(double, double, double) #1

declare dso_local i32 @time_within_day(double) #1

declare dso_local double @time_clip(double) #1

declare dso_local i32 @jsval_number(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
