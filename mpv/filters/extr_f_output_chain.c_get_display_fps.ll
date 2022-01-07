; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_get_display_fps.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_get_display_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_stream_info = type { %struct.chain* }
%struct.chain = type { i64 }

@VOCTRL_GET_DISPLAY_FPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.mp_stream_info*)* @get_display_fps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_display_fps(%struct.mp_stream_info* %0) #0 {
  %2 = alloca %struct.mp_stream_info*, align 8
  %3 = alloca %struct.chain*, align 8
  %4 = alloca double, align 8
  store %struct.mp_stream_info* %0, %struct.mp_stream_info** %2, align 8
  %5 = load %struct.mp_stream_info*, %struct.mp_stream_info** %2, align 8
  %6 = getelementptr inbounds %struct.mp_stream_info, %struct.mp_stream_info* %5, i32 0, i32 0
  %7 = load %struct.chain*, %struct.chain** %6, align 8
  store %struct.chain* %7, %struct.chain** %3, align 8
  store double 0.000000e+00, double* %4, align 8
  %8 = load %struct.chain*, %struct.chain** %3, align 8
  %9 = getelementptr inbounds %struct.chain, %struct.chain* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.chain*, %struct.chain** %3, align 8
  %14 = getelementptr inbounds %struct.chain, %struct.chain* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @VOCTRL_GET_DISPLAY_FPS, align 4
  %17 = call i32 @vo_control(i64 %15, i32 %16, double* %4)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load double, double* %4, align 8
  ret double %19
}

declare dso_local i32 @vo_control(i64, i32, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
