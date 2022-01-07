; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_planner.c_gather_grouping_paths.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_planner.c_gather_grouping_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { double, double, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*)* @gather_grouping_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_grouping_paths(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca double, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = call i32 @generate_gather_paths(%struct.TYPE_18__* %8, %struct.TYPE_17__* %9, i32 1)
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_19__* @linitial(i32 %13)
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %5, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pathkeys_contained_in(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %53, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = fmul double %26, %29
  store double %30, double* %7, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @create_sort_path(%struct.TYPE_18__* %31, %struct.TYPE_17__* %32, %struct.TYPE_19__* %33, i32 %36, double -1.000000e+00)
  %38 = inttoptr i64 %37 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %38, %struct.TYPE_19__** %6, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @create_gather_merge_path(%struct.TYPE_18__* %39, %struct.TYPE_17__* %40, %struct.TYPE_19__* %41, i32 %44, i32 %47, i32* null, double* %7)
  %49 = inttoptr i64 %48 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %6, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = call i32 @add_path(%struct.TYPE_17__* %50, %struct.TYPE_19__* %51)
  br label %53

53:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @generate_gather_paths(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_19__* @linitial(i32) #1

declare dso_local i32 @pathkeys_contained_in(i32, i32) #1

declare dso_local i64 @create_sort_path(%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_19__*, i32, double) #1

declare dso_local i64 @create_gather_merge_path(%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_19__*, i32, i32, i32*, double*) #1

declare dso_local i32 @add_path(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
