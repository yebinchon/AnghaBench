; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_dump_audio_stats.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_dump_audio_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i32, double, i32, i64, i32 }

@MSGL_STATS = common dso_local global i32 0, align 4
@STATUS_PLAYING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"value %f ao-dev\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @dump_audio_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_audio_stats(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @MSGL_STATS, align 4
  %10 = call i32 @mp_msg_test(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %66

13:                                               ; preds = %1
  %14 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @STATUS_PLAYING, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %13
  %20 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %26 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19, %13
  %30 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %31 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  br label %66

32:                                               ; preds = %24
  %33 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %34 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call double @ao_get_delay(i32 %35)
  store double %36, double* %3, align 8
  %37 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %38 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %32
  %42 = call i32 (...) @mp_time_us()
  %43 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %44 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load double, double* %3, align 8
  %46 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %47 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %46, i32 0, i32 2
  store double %45, double* %47, align 8
  br label %48

48:                                               ; preds = %41, %32
  %49 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %50 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %49, i32 0, i32 2
  %51 = load double, double* %50, align 8
  %52 = load double, double* %3, align 8
  %53 = fsub double %51, %52
  store double %53, double* %4, align 8
  %54 = call i32 (...) @mp_time_us()
  %55 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %56 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %54, %57
  %59 = sitofp i32 %58 to double
  %60 = fdiv double %59, 1.000000e+06
  store double %60, double* %5, align 8
  %61 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %62 = load double, double* %4, align 8
  %63 = load double, double* %5, align 8
  %64 = fsub double %62, %63
  %65 = call i32 @MP_STATS(%struct.MPContext* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double %64)
  br label %66

66:                                               ; preds = %48, %29, %12
  ret void
}

declare dso_local i32 @mp_msg_test(i32, i32) #1

declare dso_local double @ao_get_delay(i32) #1

declare dso_local i32 @mp_time_us(...) #1

declare dso_local i32 @MP_STATS(%struct.MPContext*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
