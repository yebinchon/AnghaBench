; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_spgcostestimate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_spgcostestimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, double, double, i32 }

@cpu_operator_cost = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spgcostestimate(i32* %0, %struct.TYPE_8__* %1, double %2, i32* %3, i32* %4, i32* %5, double* %6, double* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.TYPE_10__, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store double %2, double* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store double* %6, double** %15, align 8
  store double* %7, double** %16, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %17, align 8
  %23 = call i32 @MemSet(%struct.TYPE_10__* %18, i32 0, i32 40)
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = load double, double* %11, align 8
  %27 = call i32 @genericcostestimate(i32* %24, %struct.TYPE_8__* %25, double %26, %struct.TYPE_10__* %18)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sitofp i32 %40 to double
  %42 = call i32 @log(double %41)
  %43 = call i32 @log(double 1.000000e+02)
  %44 = sdiv i32 %42, %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %50

47:                                               ; preds = %32
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %37
  br label %51

51:                                               ; preds = %50, %8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = sitofp i32 %59 to double
  %61 = call i32 @log(double %60)
  %62 = call i32 @ceil(i32 %61)
  %63 = load i32, i32* @cpu_operator_cost, align 4
  %64 = mul nsw i32 %62, %63
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %19, align 4
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, %65
  store i32 %68, i32* %66, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %19, align 4
  %72 = mul nsw i32 %70, %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %56, %51
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  %81 = sitofp i32 %80 to double
  %82 = fmul double %81, 5.000000e+01
  %83 = load i32, i32* @cpu_operator_cost, align 4
  %84 = sitofp i32 %83 to double
  %85 = fmul double %82, %84
  %86 = fptosi double %85 to i32
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, %87
  store i32 %90, i32* %88, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %19, align 4
  %94 = mul nsw i32 %92, %93
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %12, align 8
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %13, align 8
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %14, align 8
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %108 = load double, double* %107, align 8
  %109 = load double*, double** %15, align 8
  store double %108, double* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %111 = load double, double* %110, align 8
  %112 = load double*, double** %16, align 8
  store double %111, double* %112, align 8
  ret void
}

declare dso_local i32 @MemSet(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @genericcostestimate(i32*, %struct.TYPE_8__*, double, %struct.TYPE_10__*) #1

declare dso_local i32 @log(double) #1

declare dso_local i32 @ceil(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
