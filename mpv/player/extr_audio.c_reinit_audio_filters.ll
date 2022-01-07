; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_reinit_audio_filters.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_reinit_audio_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, %struct.ao_chain* }
%struct.ao_chain = type { i32 }

@STATUS_PLAYING = common dso_local global i64 0, align 8
@MPSEEK_EXACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reinit_audio_filters(%struct.MPContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.ao_chain*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 1
  %9 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  store %struct.ao_chain* %9, %struct.ao_chain** %4, align 8
  %10 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %11 = icmp ne %struct.ao_chain* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %15 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call double @mp_output_get_measured_total_delay(i32 %16)
  store double %17, double* %5, align 8
  %18 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %19 = call i64 @recreate_audio_filters(%struct.MPContext* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %42

22:                                               ; preds = %13
  %23 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %24 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call double @mp_output_get_measured_total_delay(i32 %25)
  store double %26, double* %6, align 8
  %27 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @STATUS_PLAYING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load double, double* %5, align 8
  %34 = load double, double* %6, align 8
  %35 = fsub double %33, %34
  %36 = fcmp oge double %35, 2.000000e-01
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %39 = load i32, i32* @MPSEEK_EXACT, align 4
  %40 = call i32 @issue_refresh_seek(%struct.MPContext* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %32, %22
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %21, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local double @mp_output_get_measured_total_delay(i32) #1

declare dso_local i64 @recreate_audio_filters(%struct.MPContext*) #1

declare dso_local i32 @issue_refresh_seek(%struct.MPContext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
