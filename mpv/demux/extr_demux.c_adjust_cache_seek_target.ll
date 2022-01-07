; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_adjust_cache_seek_target.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_adjust_cache_seek_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.demux_stream* }
%struct.demux_stream = type { i64, i64 }
%struct.demux_cached_range = type { %struct.demux_queue** }
%struct.demux_queue = type { i32 }
%struct.demux_packet = type { i32 }

@SEEK_HR = common dso_local global i32 0, align 4
@STREAM_VIDEO = common dso_local global i64 0, align 8
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [29 x i8] c"adjust seek target %f -> %f\0A\00", align 1
@SEEK_FORWARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*, %struct.demux_cached_range*, double*, i32*)* @adjust_cache_seek_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_cache_seek_target(%struct.demux_internal* %0, %struct.demux_cached_range* %1, double* %2, i32* %3) #0 {
  %5 = alloca %struct.demux_internal*, align 8
  %6 = alloca %struct.demux_cached_range*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.demux_stream*, align 8
  %11 = alloca %struct.demux_queue*, align 8
  %12 = alloca %struct.demux_packet*, align 8
  %13 = alloca double, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %5, align 8
  store %struct.demux_cached_range* %1, %struct.demux_cached_range** %6, align 8
  store double* %2, double** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SEEK_HR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %88

20:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %85, %20
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %24 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %88

27:                                               ; preds = %21
  %28 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %29 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.demux_stream*, %struct.demux_stream** %35, align 8
  store %struct.demux_stream* %36, %struct.demux_stream** %10, align 8
  %37 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %38 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %37, i32 0, i32 0
  %39 = load %struct.demux_queue**, %struct.demux_queue*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.demux_queue*, %struct.demux_queue** %39, i64 %41
  %43 = load %struct.demux_queue*, %struct.demux_queue** %42, align 8
  store %struct.demux_queue* %43, %struct.demux_queue** %11, align 8
  %44 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %45 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %27
  %49 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %50 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @STREAM_VIDEO, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %48
  %55 = load %struct.demux_queue*, %struct.demux_queue** %11, align 8
  %56 = load double*, double** %7, align 8
  %57 = load double, double* %56, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.demux_packet* @find_seek_target(%struct.demux_queue* %55, double %57, i32 %59)
  store %struct.demux_packet* %60, %struct.demux_packet** %12, align 8
  %61 = load %struct.demux_packet*, %struct.demux_packet** %12, align 8
  %62 = icmp ne %struct.demux_packet* %61, null
  br i1 %62, label %63, label %83

63:                                               ; preds = %54
  %64 = load %struct.demux_packet*, %struct.demux_packet** %12, align 8
  %65 = call i32 @compute_keyframe_times(%struct.demux_packet* %64, double* %13, i32* null)
  %66 = load double, double* %13, align 8
  %67 = load double, double* @MP_NOPTS_VALUE, align 8
  %68 = fcmp une double %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %71 = load double*, double** %7, align 8
  %72 = load double, double* %71, align 8
  %73 = load double, double* %13, align 8
  %74 = call i32 @MP_VERBOSE(%struct.demux_internal* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), double %72, double %73)
  %75 = load double, double* %13, align 8
  %76 = load double*, double** %7, align 8
  store double %75, double* %76, align 8
  %77 = load i32, i32* @SEEK_FORWARD, align 4
  %78 = xor i32 %77, -1
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %69, %63
  br label %83

83:                                               ; preds = %82, %54
  br label %88

84:                                               ; preds = %48, %27
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %21

88:                                               ; preds = %19, %83, %21
  ret void
}

declare dso_local %struct.demux_packet* @find_seek_target(%struct.demux_queue*, double, i32) #1

declare dso_local i32 @compute_keyframe_times(%struct.demux_packet*, double*, i32*) #1

declare dso_local i32 @MP_VERBOSE(%struct.demux_internal*, i8*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
