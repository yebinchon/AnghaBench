; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_get_audio_conversion.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_get_audio_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_convert_info = type { i32 }
%struct.obs_output = type { %struct.audio_convert_info, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audio_convert_info* (%struct.obs_output*)* @get_audio_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audio_convert_info* @get_audio_conversion(%struct.obs_output* %0) #0 {
  %2 = alloca %struct.obs_output*, align 8
  store %struct.obs_output* %0, %struct.obs_output** %2, align 8
  %3 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %4 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %9 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %8, i32 0, i32 0
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi %struct.audio_convert_info* [ %9, %7 ], [ null, %10 ]
  ret %struct.audio_convert_info* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
