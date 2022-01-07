; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_reselect_demux_stream.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_reselect_demux_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.track* }
%struct.track = type { i64, i32, i32, i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@STREAM_SUB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reselect_demux_stream(%struct.MPContext* %0, %struct.track* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.track*, align 8
  %5 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.track* %1, %struct.track** %4, align 8
  %6 = load %struct.track*, %struct.track** %4, align 8
  %7 = getelementptr inbounds %struct.track, %struct.track* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %53

11:                                               ; preds = %2
  %12 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %13 = call double @get_current_time(%struct.MPContext* %12)
  store double %13, double* %5, align 8
  %14 = load double, double* %5, align 8
  %15 = load double, double* @MP_NOPTS_VALUE, align 8
  %16 = fcmp une double %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %19 = load %struct.track*, %struct.track** %4, align 8
  %20 = call i64 @get_track_seek_offset(%struct.MPContext* %18, %struct.track* %19)
  %21 = sitofp i64 %20 to double
  %22 = load double, double* %5, align 8
  %23 = fadd double %22, %21
  store double %23, double* %5, align 8
  %24 = load %struct.track*, %struct.track** %4, align 8
  %25 = getelementptr inbounds %struct.track, %struct.track* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @STREAM_SUB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load double, double* %5, align 8
  %31 = fsub double %30, 1.000000e+01
  store double %31, double* %5, align 8
  br label %32

32:                                               ; preds = %29, %17
  br label %33

33:                                               ; preds = %32, %11
  %34 = load %struct.track*, %struct.track** %4, align 8
  %35 = getelementptr inbounds %struct.track, %struct.track* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.track*, %struct.track** %4, align 8
  %38 = getelementptr inbounds %struct.track, %struct.track* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load double, double* %5, align 8
  %41 = load %struct.track*, %struct.track** %4, align 8
  %42 = getelementptr inbounds %struct.track, %struct.track* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @demuxer_select_track(i32 %36, i32 %39, double %40, i32 %43)
  %45 = load %struct.track*, %struct.track** %4, align 8
  %46 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %47 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %46, i32 0, i32 0
  %48 = load %struct.track*, %struct.track** %47, align 8
  %49 = icmp eq %struct.track* %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %33
  %51 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %52 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %51, i32 0, i32 0
  store %struct.track* null, %struct.track** %52, align 8
  br label %53

53:                                               ; preds = %10, %50, %33
  ret void
}

declare dso_local double @get_current_time(%struct.MPContext*) #1

declare dso_local i64 @get_track_seek_offset(%struct.MPContext*, %struct.track*) #1

declare dso_local i32 @demuxer_select_track(i32, i32, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
