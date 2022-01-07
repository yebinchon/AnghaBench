; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_filter_audio.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_filter_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { double, %struct.ao_chain* }
%struct.ao_chain = type { i32 }
%struct.mp_audio_buffer = type { i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@AD_WAIT = common dso_local global i32 0, align 4
@AD_EOF = common dso_local global i32 0, align 4
@AD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, %struct.mp_audio_buffer*, i32)* @filter_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_audio(%struct.MPContext* %0, %struct.mp_audio_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca %struct.mp_audio_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ao_chain*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store %struct.mp_audio_buffer* %1, %struct.mp_audio_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 1
  %13 = load %struct.ao_chain*, %struct.ao_chain** %12, align 8
  store %struct.ao_chain* %13, %struct.ao_chain** %8, align 8
  %14 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %15 = call double @get_play_end_pts(%struct.MPContext* %14)
  store double %15, double* %9, align 8
  %16 = load double, double* %9, align 8
  %17 = load double, double* @MP_NOPTS_VALUE, align 8
  %18 = fcmp une double %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = load double, double* %9, align 8
  %24 = fmul double %23, %22
  store double %24, double* %9, align 8
  br label %25

25:                                               ; preds = %19, %3
  store i32 0, i32* %10, align 4
  %26 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %27 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load double, double* %9, align 8
  %30 = call i32 @copy_output(%struct.MPContext* %26, %struct.ao_chain* %27, i32 %28, double %29, i32* %10)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @AD_WAIT, align 4
  store i32 %33, i32* %4, align 4
  br label %43

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @AD_EOF, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @AD_OK, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %32
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local double @get_play_end_pts(%struct.MPContext*) #1

declare dso_local i32 @copy_output(%struct.MPContext*, %struct.ao_chain*, i32, double, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
