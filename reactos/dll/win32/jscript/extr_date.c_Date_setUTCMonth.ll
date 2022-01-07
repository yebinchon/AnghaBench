; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setUTCMonth.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setUTCMonth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_DATE_EXPECTED = common dso_local global i32 0, align 4
@JS_E_MISSING_ARG = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Date_setUTCMonth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Date_setUTCMonth(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.TYPE_3__* @date_this(i32* %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %14, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @JS_E_DATE_EXPECTED, align 4
  %26 = call i32 @throw_type_error(i32* %24, i32 %25, i32* null)
  store i32 %26, i32* %7, align 4
  br label %89

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @JS_E_MISSING_ARG, align 4
  %33 = call i32 @throw_type_error(i32* %31, i32 %32, i32* null)
  store i32 %33, i32* %7, align 4
  br label %89

34:                                               ; preds = %27
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  store double %37, double* %15, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @to_number(i32* %38, i32 %41, double* %16)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %18, align 4
  store i32 %47, i32* %7, align 4
  br label %89

48:                                               ; preds = %34
  %49 = load i32, i32* %11, align 4
  %50 = icmp ugt i32 %49, 1
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @to_number(i32* %52, i32 %55, double* %17)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %18, align 4
  store i32 %61, i32* %7, align 4
  br label %89

62:                                               ; preds = %51
  br label %66

63:                                               ; preds = %48
  %64 = load double, double* %15, align 8
  %65 = call double @date_from_time(double %64)
  store double %65, double* %17, align 8
  br label %66

66:                                               ; preds = %63, %62
  %67 = load double, double* %15, align 8
  %68 = call i32 @year_from_time(double %67)
  %69 = load double, double* %16, align 8
  %70 = load double, double* %17, align 8
  %71 = call i32 @make_day(i32 %68, double %69, double %70)
  %72 = load double, double* %15, align 8
  %73 = call i32 @time_within_day(double %72)
  %74 = call double @make_date(i32 %71, i32 %73)
  store double %74, double* %15, align 8
  %75 = load double, double* %15, align 8
  %76 = call double @time_clip(double %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store double %76, double* %78, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %66
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load double, double* %83, align 8
  %85 = call i32 @jsval_number(double %84)
  %86 = load i32*, i32** %13, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %66
  %88 = load i32, i32* @S_OK, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %60, %46, %30, %23
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_3__* @date_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local double @date_from_time(double) #1

declare dso_local double @make_date(i32, i32) #1

declare dso_local i32 @make_day(i32, double, double) #1

declare dso_local i32 @year_from_time(double) #1

declare dso_local i32 @time_within_day(double) #1

declare dso_local double @time_clip(double) #1

declare dso_local i32 @jsval_number(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
