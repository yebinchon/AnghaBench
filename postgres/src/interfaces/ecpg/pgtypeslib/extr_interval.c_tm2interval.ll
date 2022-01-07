; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_interval.c_tm2interval.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_interval.c_tm2interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { double, i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@MONTHS_PER_YEAR = common dso_local global double 0.000000e+00, align 8
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@USECS_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, i64, %struct.TYPE_3__*)* @tm2interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2interval(%struct.tm* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.tm* %0, %struct.tm** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %8 = load %struct.tm*, %struct.tm** %5, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = load double, double* @MONTHS_PER_YEAR, align 8
  %12 = fmul double %10, %11
  %13 = load %struct.tm*, %struct.tm** %5, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sitofp i64 %15 to double
  %17 = fadd double %12, %16
  %18 = load i64, i64* @INT_MAX, align 8
  %19 = sitofp i64 %18 to double
  %20 = fcmp ogt double %17, %19
  br i1 %20, label %35, label %21

21:                                               ; preds = %3
  %22 = load %struct.tm*, %struct.tm** %5, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = load double, double* @MONTHS_PER_YEAR, align 8
  %26 = fmul double %24, %25
  %27 = load %struct.tm*, %struct.tm** %5, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to double
  %31 = fadd double %26, %30
  %32 = load i64, i64* @INT_MIN, align 8
  %33 = sitofp i64 %32 to double
  %34 = fcmp olt double %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21, %3
  store i32 -1, i32* %4, align 4
  br label %78

36:                                               ; preds = %21
  %37 = load %struct.tm*, %struct.tm** %5, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = load double, double* @MONTHS_PER_YEAR, align 8
  %41 = fmul double %39, %40
  %42 = load %struct.tm*, %struct.tm** %5, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sitofp i64 %44 to double
  %46 = fadd double %41, %45
  %47 = fptosi double %46 to i64
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.tm*, %struct.tm** %5, align 8
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @INT64CONST(i32 24)
  %54 = mul nsw i32 %52, %53
  %55 = load %struct.tm*, %struct.tm** %5, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = call i32 @INT64CONST(i32 60)
  %60 = mul nsw i32 %58, %59
  %61 = load %struct.tm*, %struct.tm** %5, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %60, %63
  %65 = call i32 @INT64CONST(i32 60)
  %66 = mul nsw i32 %64, %65
  %67 = load %struct.tm*, %struct.tm** %5, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = load i32, i32* @USECS_PER_SEC, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %73, %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %36, %35
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @INT64CONST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
