; ModuleID = '/home/carl/AnghaBench/postgres/contrib/file_fdw/extr_file_fdw.c_estimate_size.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/file_fdw/extr_file_fdw.c_estimate_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, double, double, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, double, i32, i64 }
%struct.stat = type { i32 }

@BLCKSZ = common dso_local global i32 0, align 4
@SizeofHeapTupleHeader = common dso_local global i32 0, align 4
@JOIN_INNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, %struct.TYPE_8__*)* @estimate_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @estimate_size(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @stat(i32 %20, %struct.stat* %7)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17, %3
  %24 = load i32, i32* @BLCKSZ, align 4
  %25 = mul nsw i32 10, %24
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %17
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BLCKSZ, align 4
  %31 = sub nsw i32 %30, 1
  %32 = add nsw i32 %29, %31
  %33 = load i32, i32* @BLCKSZ, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to double
  %54 = fdiv double %49, %53
  store double %54, double* %11, align 8
  %55 = load double, double* %11, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sitofp i32 %56 to double
  %58 = fmul double %55, %57
  %59 = call double @clamp_row_est(double %58)
  store double %59, double* %9, align 8
  br label %77

60:                                               ; preds = %38
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MAXALIGN(i32 %65)
  %67 = load i32, i32* @SizeofHeapTupleHeader, align 4
  %68 = call i32 @MAXALIGN(i32 %67)
  %69 = add nsw i32 %66, %68
  store i32 %69, i32* %12, align 4
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sitofp i32 %71 to double
  %73 = load i32, i32* %12, align 4
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %72, %74
  %76 = call double @clamp_row_est(double %75)
  store double %76, double* %9, align 8
  br label %77

77:                                               ; preds = %60, %46
  %78 = load double, double* %9, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store double %78, double* %80, align 8
  %81 = load double, double* %9, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @JOIN_INNER, align 4
  %87 = call double @clauselist_selectivity(i32* %82, i32 %85, i32 0, i32 %86, i32* null)
  %88 = fmul double %81, %87
  store double %88, double* %10, align 8
  %89 = load double, double* %10, align 8
  %90 = call double @clamp_row_est(double %89)
  store double %90, double* %10, align 8
  %91 = load double, double* %10, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  store double %91, double* %93, align 8
  ret void
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local double @clamp_row_est(double) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local double @clauselist_selectivity(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
