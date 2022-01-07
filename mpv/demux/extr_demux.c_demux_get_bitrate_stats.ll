; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_get_bitrate_stats.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_get_bitrate_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, i32, %struct.TYPE_2__**, %struct.demuxer* }
%struct.TYPE_2__ = type { %struct.demux_stream* }
%struct.demux_stream = type { double, i64, i64 }

@STREAM_TYPE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demux_get_bitrate_stats(%struct.demuxer* %0, double* %1) #0 {
  %3 = alloca %struct.demuxer*, align 8
  %4 = alloca double*, align 8
  %5 = alloca %struct.demux_internal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.demux_stream*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %3, align 8
  store double* %1, double** %4, align 8
  %9 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %10 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %9, i32 0, i32 0
  %11 = load %struct.demux_internal*, %struct.demux_internal** %10, align 8
  store %struct.demux_internal* %11, %struct.demux_internal** %5, align 8
  %12 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %13 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %14 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %13, i32 0, i32 3
  %15 = load %struct.demuxer*, %struct.demuxer** %14, align 8
  %16 = icmp eq %struct.demuxer* %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %20 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %19, i32 0, i32 1
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %31, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @STREAM_TYPE_COUNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load double*, double** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  store double -1.000000e+00, double* %30, align 8
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %22

34:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %78, %34
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %38 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %35
  %42 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %43 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.demux_stream*, %struct.demux_stream** %49, align 8
  store %struct.demux_stream* %50, %struct.demux_stream** %8, align 8
  %51 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %52 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %41
  %56 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %57 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = fcmp oge double %58, 0.000000e+00
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load double*, double** %4, align 8
  %62 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %63 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds double, double* %61, i64 %64
  %66 = load double, double* %65, align 8
  %67 = call double @MPMAX(i32 0, double %66)
  %68 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %69 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %68, i32 0, i32 0
  %70 = load double, double* %69, align 8
  %71 = fadd double %67, %70
  %72 = load double*, double** %4, align 8
  %73 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  %74 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds double, double* %72, i64 %75
  store double %71, double* %76, align 8
  br label %77

77:                                               ; preds = %60, %55, %41
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %35

81:                                               ; preds = %35
  %82 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %83 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %82, i32 0, i32 1
  %84 = call i32 @pthread_mutex_unlock(i32* %83)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local double @MPMAX(i32, double) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
