; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_obs_encoder_get_display_name.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_obs_encoder_get_display_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder_info = type { i8* (i32)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @obs_encoder_get_display_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obs_encoder_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.obs_encoder_info* @find_encoder(i8* %4)
  store %struct.obs_encoder_info* %5, %struct.obs_encoder_info** %3, align 8
  %6 = load %struct.obs_encoder_info*, %struct.obs_encoder_info** %3, align 8
  %7 = icmp ne %struct.obs_encoder_info* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.obs_encoder_info*, %struct.obs_encoder_info** %3, align 8
  %10 = getelementptr inbounds %struct.obs_encoder_info, %struct.obs_encoder_info* %9, i32 0, i32 0
  %11 = load i8* (i32)*, i8* (i32)** %10, align 8
  %12 = load %struct.obs_encoder_info*, %struct.obs_encoder_info** %3, align 8
  %13 = getelementptr inbounds %struct.obs_encoder_info, %struct.obs_encoder_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i8* %11(i32 %14)
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %8
  %18 = phi i8* [ %15, %8 ], [ null, %16 ]
  ret i8* %18
}

declare dso_local %struct.obs_encoder_info* @find_encoder(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
