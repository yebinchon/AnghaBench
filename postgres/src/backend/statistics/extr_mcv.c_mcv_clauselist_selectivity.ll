; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/statistics/extr_mcv.c_mcv_clauselist_selectivity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/statistics/extr_mcv.c_mcv_clauselist_selectivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @mcv_clauselist_selectivity(i32* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6, double* %7, double* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca double, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store double* %7, double** %17, align 8
  store double* %8, double** %18, align 8
  store double 0.000000e+00, double* %21, align 8
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_9__* @statext_mcv_load(i32 %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %20, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %33 = call i32* @mcv_get_match_bitmap(i32* %27, i32* %28, i32 %31, %struct.TYPE_9__* %32, i32 0)
  store i32* %33, i32** %22, align 8
  %34 = load double*, double** %17, align 8
  store double 0.000000e+00, double* %34, align 8
  %35 = load double*, double** %18, align 8
  store double 0.000000e+00, double* %35, align 8
  store i32 0, i32* %19, align 4
  br label %36

36:                                               ; preds = %86, %9
  %37 = load i32, i32* %19, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32, i32* %19, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %50 to double
  %52 = load double*, double** %18, align 8
  %53 = load double, double* %52, align 8
  %54 = fadd double %53, %51
  store double %54, double* %52, align 8
  %55 = load i32*, i32** %22, align 8
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %42
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sitofp i64 %69 to double
  %71 = load double*, double** %17, align 8
  %72 = load double, double* %71, align 8
  %73 = fadd double %72, %70
  store double %73, double* %71, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sitofp i64 %81 to double
  %83 = load double, double* %21, align 8
  %84 = fadd double %83, %82
  store double %84, double* %21, align 8
  br label %85

85:                                               ; preds = %61, %42
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  br label %36

89:                                               ; preds = %36
  %90 = load double, double* %21, align 8
  ret double %90
}

declare dso_local %struct.TYPE_9__* @statext_mcv_load(i32) #1

declare dso_local i32* @mcv_get_match_bitmap(i32*, i32*, i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
