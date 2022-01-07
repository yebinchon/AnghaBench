; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_lookup_timed_metadata.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_lookup_timed_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timed_metadata = type { double }
%struct.demux_internal = type { i32, %struct.demux_cached_range* }
%struct.demux_cached_range = type { i32, %struct.timed_metadata** }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.timed_metadata* (%struct.demux_internal*, double)* @lookup_timed_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.timed_metadata* @lookup_timed_metadata(%struct.demux_internal* %0, double %1) #0 {
  %3 = alloca %struct.timed_metadata*, align 8
  %4 = alloca %struct.demux_internal*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.demux_cached_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.demux_internal* %0, %struct.demux_internal** %4, align 8
  store double %1, double* %5, align 8
  %10 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %11 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %10, i32 0, i32 1
  %12 = load %struct.demux_cached_range*, %struct.demux_cached_range** %11, align 8
  store %struct.demux_cached_range* %12, %struct.demux_cached_range** %6, align 8
  %13 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %14 = icmp ne %struct.demux_cached_range* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %17 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load double, double* %5, align 8
  %22 = load double, double* @MP_NOPTS_VALUE, align 8
  %23 = fcmp oeq double %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %15, %2
  store %struct.timed_metadata* null, %struct.timed_metadata** %3, align 8
  br label %97

25:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  %26 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %27 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %34 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %39 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %38, i32 0, i32 1
  %40 = load %struct.timed_metadata**, %struct.timed_metadata*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.timed_metadata*, %struct.timed_metadata** %40, i64 %42
  %44 = load %struct.timed_metadata*, %struct.timed_metadata** %43, align 8
  %45 = getelementptr inbounds %struct.timed_metadata, %struct.timed_metadata* %44, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = load double, double* %5, align 8
  %48 = fcmp ole double %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %37, %31, %25
  %53 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %54 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %58 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %84, %52
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %63 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %60
  %67 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %68 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %67, i32 0, i32 1
  %69 = load %struct.timed_metadata**, %struct.timed_metadata*** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.timed_metadata*, %struct.timed_metadata** %69, i64 %71
  %73 = load %struct.timed_metadata*, %struct.timed_metadata** %72, align 8
  %74 = getelementptr inbounds %struct.timed_metadata, %struct.timed_metadata* %73, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = load double, double* %5, align 8
  %77 = fcmp oge double %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %82 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %87

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %60

87:                                               ; preds = %78, %60
  %88 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %89 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %88, i32 0, i32 1
  %90 = load %struct.timed_metadata**, %struct.timed_metadata*** %89, align 8
  %91 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %92 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.timed_metadata*, %struct.timed_metadata** %90, i64 %94
  %96 = load %struct.timed_metadata*, %struct.timed_metadata** %95, align 8
  store %struct.timed_metadata* %96, %struct.timed_metadata** %3, align 8
  br label %97

97:                                               ; preds = %87, %24
  %98 = load %struct.timed_metadata*, %struct.timed_metadata** %3, align 8
  ret %struct.timed_metadata* %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
