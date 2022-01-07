; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setDate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_setDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_DATE_EXPECTED = common dso_local global i32 0, align 4
@JS_E_MISSING_ARG = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Date_setDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Date_setDate(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  br label %75

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @JS_E_MISSING_ARG, align 4
  %32 = call i32 @throw_type_error(i32* %30, i32 %31, i32* null)
  store i32 %32, i32* %7, align 4
  br label %75

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
  br label %75

44:                                               ; preds = %33
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %49 = call double @local_time(i32 %47, %struct.TYPE_5__* %48)
  store double %49, double* %15, align 8
  %50 = load double, double* %15, align 8
  %51 = call i32 @year_from_time(double %50)
  %52 = load double, double* %15, align 8
  %53 = call i32 @month_from_time(double %52)
  %54 = load double, double* %16, align 8
  %55 = call i32 @make_day(i32 %51, i32 %53, double %54)
  %56 = load double, double* %15, align 8
  %57 = call i32 @time_within_day(double %56)
  %58 = call double @make_date(i32 %55, i32 %57)
  store double %58, double* %15, align 8
  %59 = load double, double* %15, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %61 = call i32 @utc(double %59, %struct.TYPE_5__* %60)
  %62 = call i32 @time_clip(i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %44
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @jsval_number(i32 %70)
  %72 = load i32*, i32** %13, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %44
  %74 = load i32, i32* @S_OK, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %42, %29, %22
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_5__* @date_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local double @local_time(i32, %struct.TYPE_5__*) #1

declare dso_local double @make_date(i32, i32) #1

declare dso_local i32 @make_day(i32, i32, double) #1

declare dso_local i32 @year_from_time(double) #1

declare dso_local i32 @month_from_time(double) #1

declare dso_local i32 @time_within_day(double) #1

declare dso_local i32 @time_clip(i32) #1

declare dso_local i32 @utc(double, %struct.TYPE_5__*) #1

declare dso_local i32 @jsval_number(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
