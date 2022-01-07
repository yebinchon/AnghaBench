; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setSeconds.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setSeconds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_DATE_EXPECTED = common dso_local global i32 0, align 4
@JS_E_MISSING_ARG = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Date_setSeconds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Date_setSeconds(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.TYPE_5__* @date_this(i32* %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %14, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @JS_E_DATE_EXPECTED, align 4
  %26 = call i32 @throw_type_error(i32* %24, i32 %25, i32* null)
  store i32 %26, i32* %7, align 4
  br label %95

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @JS_E_MISSING_ARG, align 4
  %33 = call i32 @throw_type_error(i32* %31, i32 %32, i32* null)
  store i32 %33, i32* %7, align 4
  br label %95

34:                                               ; preds = %27
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %39 = call double @local_time(i32 %37, %struct.TYPE_5__* %38)
  store double %39, double* %15, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @to_number(i32* %40, i32 %43, double* %16)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %18, align 4
  store i32 %49, i32* %7, align 4
  br label %95

50:                                               ; preds = %34
  %51 = load i32, i32* %11, align 4
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @to_number(i32* %54, i32 %57, double* %17)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = call i64 @FAILED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %18, align 4
  store i32 %63, i32* %7, align 4
  br label %95

64:                                               ; preds = %53
  br label %68

65:                                               ; preds = %50
  %66 = load double, double* %15, align 8
  %67 = call double @ms_from_time(double %66)
  store double %67, double* %17, align 8
  br label %68

68:                                               ; preds = %65, %64
  %69 = load double, double* %15, align 8
  %70 = call i32 @day(double %69)
  %71 = load double, double* %15, align 8
  %72 = call i32 @hour_from_time(double %71)
  %73 = load double, double* %15, align 8
  %74 = call i32 @min_from_time(double %73)
  %75 = load double, double* %16, align 8
  %76 = load double, double* %17, align 8
  %77 = call i32 @make_time(i32 %72, i32 %74, double %75, double %76)
  %78 = call double @make_date(i32 %70, i32 %77)
  store double %78, double* %15, align 8
  %79 = load double, double* %15, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %81 = call i32 @utc(double %79, %struct.TYPE_5__* %80)
  %82 = call i32 @time_clip(i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %13, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %68
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @jsval_number(i32 %90)
  %92 = load i32*, i32** %13, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %68
  %94 = load i32, i32* @S_OK, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %93, %62, %48, %30, %23
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_5__* @date_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local double @local_time(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local double @ms_from_time(double) #1

declare dso_local double @make_date(i32, i32) #1

declare dso_local i32 @day(double) #1

declare dso_local i32 @make_time(i32, i32, double, double) #1

declare dso_local i32 @hour_from_time(double) #1

declare dso_local i32 @min_from_time(double) #1

declare dso_local i32 @time_clip(i32) #1

declare dso_local i32 @utc(double, %struct.TYPE_5__*) #1

declare dso_local i32 @jsval_number(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
