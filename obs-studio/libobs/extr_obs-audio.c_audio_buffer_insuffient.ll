; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio.c_audio_buffer_insuffient.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio.c_audio_buffer_insuffient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@AUDIO_OUTPUT_FRAMES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_source*, i64, i32)* @audio_buffer_insuffient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_buffer_insuffient(%struct.obs_source* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.obs_source*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.obs_source* %0, %struct.obs_source** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @AUDIO_OUTPUT_FRAMES, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %13 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %19 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %24 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17, %3
  store i32 0, i32* %4, align 4
  br label %72

28:                                               ; preds = %22
  %29 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %30 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %36 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %34
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %44 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i64 @convert_time_to_frames(i64 %42, i32 %47)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @AUDIO_OUTPUT_FRAMES, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %72

53:                                               ; preds = %41
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %53, %34, %28
  %58 = load i64, i64* %8, align 8
  %59 = mul i64 %58, 4
  store i64 %59, i64* %9, align 8
  %60 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %61 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %70 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  store i32 1, i32* %4, align 4
  br label %72

71:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %68, %52, %27
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @convert_time_to_frames(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
