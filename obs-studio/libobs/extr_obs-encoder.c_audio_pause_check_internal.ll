; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_audio_pause_check_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_audio_pause_check_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pause_data = type { i64, i64 }
%struct.audio_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pause_data*, %struct.audio_data*, i64)* @audio_pause_check_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_pause_check_internal(%struct.pause_data* %0, %struct.audio_data* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pause_data*, align 8
  %6 = alloca %struct.audio_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pause_data* %0, %struct.pause_data** %5, align 8
  store %struct.audio_data* %1, %struct.audio_data** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.pause_data*, %struct.pause_data** %5, align 8
  %10 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

14:                                               ; preds = %3
  %15 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %16 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %20 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @audio_frames_to_ns(i64 %18, i32 %21)
  %23 = add nsw i64 %17, %22
  store i64 %23, i64* %8, align 8
  %24 = load %struct.pause_data*, %struct.pause_data** %5, align 8
  %25 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %28 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %14
  %32 = load %struct.pause_data*, %struct.pause_data** %5, align 8
  %33 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.pause_data*, %struct.pause_data** %5, align 8
  %39 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @pause_audio(%struct.pause_data* %38, %struct.audio_data* %39, i64 %40)
  %42 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %43 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %76

48:                                               ; preds = %31
  br label %75

49:                                               ; preds = %14
  %50 = load %struct.pause_data*, %struct.pause_data** %5, align 8
  %51 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %54 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %49
  %58 = load %struct.pause_data*, %struct.pause_data** %5, align 8
  %59 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp sle i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.pause_data*, %struct.pause_data** %5, align 8
  %65 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @unpause_audio(%struct.pause_data* %64, %struct.audio_data* %65, i64 %66)
  %68 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %69 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %76

74:                                               ; preds = %57, %49
  store i32 1, i32* %4, align 4
  br label %76

75:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %74, %63, %37, %13
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @audio_frames_to_ns(i64, i32) #1

declare dso_local i32 @pause_audio(%struct.pause_data*, %struct.audio_data*, i64) #1

declare dso_local i32 @unpause_audio(%struct.pause_data*, %struct.audio_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
