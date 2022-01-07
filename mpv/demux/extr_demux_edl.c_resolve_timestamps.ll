; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_edl.c_resolve_timestamps.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_edl.c_resolve_timestamps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_part = type { double, double, i32, i64 }
%struct.demuxer = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tl_part*, %struct.demuxer*)* @resolve_timestamps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_timestamps(%struct.tl_part* %0, %struct.demuxer* %1) #0 {
  %3 = alloca %struct.tl_part*, align 8
  %4 = alloca %struct.demuxer*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.tl_part* %0, %struct.tl_part** %3, align 8
  store %struct.demuxer* %1, %struct.demuxer** %4, align 8
  %8 = load %struct.tl_part*, %struct.tl_part** %3, align 8
  %9 = getelementptr inbounds %struct.tl_part, %struct.tl_part* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %14 = load %struct.tl_part*, %struct.tl_part** %3, align 8
  %15 = getelementptr inbounds %struct.tl_part, %struct.tl_part* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = call double @demuxer_chapter_time(%struct.demuxer* %13, double %16)
  store double %17, double* %5, align 8
  %18 = load %struct.tl_part*, %struct.tl_part** %3, align 8
  %19 = getelementptr inbounds %struct.tl_part, %struct.tl_part* %18, i32 0, i32 1
  %20 = load double, double* %19, align 8
  store double %20, double* %6, align 8
  %21 = load double, double* %6, align 8
  store double %21, double* %7, align 8
  %22 = load double, double* %7, align 8
  %23 = fcmp oge double %22, 0.000000e+00
  br i1 %23, label %24, label %34

24:                                               ; preds = %12
  %25 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %26 = load %struct.tl_part*, %struct.tl_part** %3, align 8
  %27 = getelementptr inbounds %struct.tl_part, %struct.tl_part* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = load %struct.tl_part*, %struct.tl_part** %3, align 8
  %30 = getelementptr inbounds %struct.tl_part, %struct.tl_part* %29, i32 0, i32 1
  %31 = load double, double* %30, align 8
  %32 = fadd double %28, %31
  %33 = call double @demuxer_chapter_time(%struct.demuxer* %25, double %32)
  store double %33, double* %7, align 8
  br label %34

34:                                               ; preds = %24, %12
  %35 = load double, double* %7, align 8
  %36 = fcmp oge double %35, 0.000000e+00
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load double, double* %5, align 8
  %39 = fcmp oge double %38, 0.000000e+00
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load double, double* %7, align 8
  %42 = load double, double* %5, align 8
  %43 = fsub double %41, %42
  store double %43, double* %6, align 8
  br label %44

44:                                               ; preds = %40, %37, %34
  %45 = load double, double* %5, align 8
  %46 = load %struct.tl_part*, %struct.tl_part** %3, align 8
  %47 = getelementptr inbounds %struct.tl_part, %struct.tl_part* %46, i32 0, i32 0
  store double %45, double* %47, align 8
  %48 = load double, double* %6, align 8
  %49 = load %struct.tl_part*, %struct.tl_part** %3, align 8
  %50 = getelementptr inbounds %struct.tl_part, %struct.tl_part* %49, i32 0, i32 1
  store double %48, double* %50, align 8
  br label %51

51:                                               ; preds = %44, %2
  %52 = load %struct.tl_part*, %struct.tl_part** %3, align 8
  %53 = getelementptr inbounds %struct.tl_part, %struct.tl_part* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %58 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %57, i32 0, i32 0
  %59 = load double, double* %58, align 8
  %60 = load %struct.tl_part*, %struct.tl_part** %3, align 8
  %61 = getelementptr inbounds %struct.tl_part, %struct.tl_part* %60, i32 0, i32 0
  store double %59, double* %61, align 8
  br label %62

62:                                               ; preds = %56, %51
  ret void
}

declare dso_local double @demuxer_chapter_time(%struct.demuxer*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
