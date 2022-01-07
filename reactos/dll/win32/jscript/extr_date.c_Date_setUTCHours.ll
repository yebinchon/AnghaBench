; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setUTCHours.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setUTCHours.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_DATE_EXPECTED = common dso_local global i32 0, align 4
@JS_E_MISSING_ARG = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Date_setUTCHours to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Date_setUTCHours(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %23 = call %struct.TYPE_3__* @date_this(i32* %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %14, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @JS_E_DATE_EXPECTED, align 4
  %28 = call i32 @throw_type_error(i32* %26, i32 %27, i32* null)
  store i32 %28, i32* %7, align 4
  br label %127

29:                                               ; preds = %6
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @JS_E_MISSING_ARG, align 4
  %35 = call i32 @throw_type_error(i32* %33, i32 %34, i32* null)
  store i32 %35, i32* %7, align 4
  br label %127

36:                                               ; preds = %29
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  store double %39, double* %15, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @to_number(i32* %40, i32 %43, double* %16)
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %20, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %20, align 4
  store i32 %49, i32* %7, align 4
  br label %127

50:                                               ; preds = %36
  %51 = load i32, i32* %11, align 4
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @to_number(i32* %54, i32 %57, double* %17)
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %20, align 4
  %60 = call i64 @FAILED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %20, align 4
  store i32 %63, i32* %7, align 4
  br label %127

64:                                               ; preds = %53
  br label %68

65:                                               ; preds = %50
  %66 = load double, double* %15, align 8
  %67 = call double @min_from_time(double %66)
  store double %67, double* %17, align 8
  br label %68

68:                                               ; preds = %65, %64
  %69 = load i32, i32* %11, align 4
  %70 = icmp ugt i32 %69, 2
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @to_number(i32* %72, i32 %75, double* %18)
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %20, align 4
  %78 = call i64 @FAILED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %20, align 4
  store i32 %81, i32* %7, align 4
  br label %127

82:                                               ; preds = %71
  br label %86

83:                                               ; preds = %68
  %84 = load double, double* %15, align 8
  %85 = call double @sec_from_time(double %84)
  store double %85, double* %18, align 8
  br label %86

86:                                               ; preds = %83, %82
  %87 = load i32, i32* %11, align 4
  %88 = icmp ugt i32 %87, 3
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @to_number(i32* %90, i32 %93, double* %19)
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %20, align 4
  %96 = call i64 @FAILED(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %20, align 4
  store i32 %99, i32* %7, align 4
  br label %127

100:                                              ; preds = %89
  br label %104

101:                                              ; preds = %86
  %102 = load double, double* %15, align 8
  %103 = call double @ms_from_time(double %102)
  store double %103, double* %19, align 8
  br label %104

104:                                              ; preds = %101, %100
  %105 = load double, double* %15, align 8
  %106 = call i32 @day(double %105)
  %107 = load double, double* %16, align 8
  %108 = load double, double* %17, align 8
  %109 = load double, double* %18, align 8
  %110 = load double, double* %19, align 8
  %111 = call i32 @make_time(double %107, double %108, double %109, double %110)
  %112 = call double @make_date(i32 %106, i32 %111)
  store double %112, double* %15, align 8
  %113 = load double, double* %15, align 8
  %114 = call double @time_clip(double %113)
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store double %114, double* %116, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %104
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load double, double* %121, align 8
  %123 = call i32 @jsval_number(double %122)
  %124 = load i32*, i32** %13, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %104
  %126 = load i32, i32* @S_OK, align 4
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %125, %98, %80, %62, %48, %32, %25
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_3__* @date_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local double @min_from_time(double) #1

declare dso_local double @sec_from_time(double) #1

declare dso_local double @ms_from_time(double) #1

declare dso_local double @make_date(i32, i32) #1

declare dso_local i32 @day(double) #1

declare dso_local i32 @make_time(double, double, double, double) #1

declare dso_local double @time_clip(double) #1

declare dso_local i32 @jsval_number(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
