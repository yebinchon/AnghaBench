; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setUTCDate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setUTCDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_DATE_EXPECTED = common dso_local global i32 0, align 4
@JS_E_MISSING_ARG = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Date_setUTCDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Date_setUTCDate(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %9, align 8
  %20 = call %struct.TYPE_3__* @date_this(i32* %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %14, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @JS_E_DATE_EXPECTED, align 4
  %25 = call i32 @throw_type_error(i32* %23, i32 %24, i32* null)
  store i32 %25, i32* %7, align 4
  br label %71

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @JS_E_MISSING_ARG, align 4
  %32 = call i32 @throw_type_error(i32* %30, i32 %31, i32* null)
  store i32 %32, i32* %7, align 4
  br label %71

33:                                               ; preds = %26
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @to_number(i32* %34, i32 %37, double* %16)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %7, align 4
  br label %71

44:                                               ; preds = %33
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  store double %47, double* %15, align 8
  %48 = load double, double* %15, align 8
  %49 = call i32 @year_from_time(double %48)
  %50 = load double, double* %15, align 8
  %51 = call i32 @month_from_time(double %50)
  %52 = load double, double* %16, align 8
  %53 = call i32 @make_day(i32 %49, i32 %51, double %52)
  %54 = load double, double* %15, align 8
  %55 = call i32 @time_within_day(double %54)
  %56 = call double @make_date(i32 %53, i32 %55)
  store double %56, double* %15, align 8
  %57 = load double, double* %15, align 8
  %58 = call double @time_clip(double %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store double %58, double* %60, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %44
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = call i32 @jsval_number(double %66)
  %68 = load i32*, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %44
  %70 = load i32, i32* @S_OK, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %42, %29, %22
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_3__* @date_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local double @make_date(i32, i32) #1

declare dso_local i32 @make_day(i32, i32, double) #1

declare dso_local i32 @year_from_time(double) #1

declare dso_local i32 @month_from_time(double) #1

declare dso_local i32 @time_within_day(double) #1

declare dso_local double @time_clip(double) #1

declare dso_local i32 @jsval_number(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
