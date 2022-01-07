; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_time.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.bstr = type { i64 }

@M_OPT_MISSING_PARAM = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Option %.*s: invalid time: '%.*s'\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i32*, i64, i64, i8*)* @parse_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_time(%struct.mp_log* %0, i32* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bstr, align 8
  %8 = alloca %struct.bstr, align 8
  %9 = alloca %struct.mp_log*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca double, align 8
  %13 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i64 %3, i64* %14, align 8
  store %struct.mp_log* %0, %struct.mp_log** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @M_OPT_MISSING_PARAM, align 4
  store i32 %19, i32* %6, align 4
  br label %55

20:                                               ; preds = %5
  %21 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %21, double* %12, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i64 @HAS_NOPTS(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @bstr_equals0(i64 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %47

31:                                               ; preds = %25, %20
  %32 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @parse_timestring(i64 %33, double* %12, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %38 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @BSTR_P(i64 %39)
  %41 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @BSTR_P(i64 %42)
  %44 = call i32 @mp_err(%struct.mp_log* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %45, i32* %6, align 4
  br label %55

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i8*, i8** %11, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load double, double* %12, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = bitcast i8* %52 to double*
  store double %51, double* %53, align 8
  br label %54

54:                                               ; preds = %50, %47
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %36, %18
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @HAS_NOPTS(i32*) #1

declare dso_local i64 @bstr_equals0(i64, i8*) #1

declare dso_local i32 @parse_timestring(i64, double*, i32) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32, i32) #1

declare dso_local i32 @BSTR_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
