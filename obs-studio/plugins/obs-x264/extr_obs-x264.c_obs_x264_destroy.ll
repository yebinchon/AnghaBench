; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_obs_x264_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_obs_x264_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_x264 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @obs_x264_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_x264_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obs_x264*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.obs_x264*
  store %struct.obs_x264* %5, %struct.obs_x264** %3, align 8
  %6 = load %struct.obs_x264*, %struct.obs_x264** %3, align 8
  %7 = icmp ne %struct.obs_x264* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.obs_x264*, %struct.obs_x264** %3, align 8
  %10 = getelementptr inbounds %struct.obs_x264, %struct.obs_x264* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @os_end_high_performance(i32 %11)
  %13 = load %struct.obs_x264*, %struct.obs_x264** %3, align 8
  %14 = call i32 @clear_data(%struct.obs_x264* %13)
  %15 = load %struct.obs_x264*, %struct.obs_x264** %3, align 8
  %16 = getelementptr inbounds %struct.obs_x264, %struct.obs_x264* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @da_free(i32 %17)
  %19 = load %struct.obs_x264*, %struct.obs_x264** %3, align 8
  %20 = call i32 @bfree(%struct.obs_x264* %19)
  br label %21

21:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @os_end_high_performance(i32) #1

declare dso_local i32 @clear_data(%struct.obs_x264*) #1

declare dso_local i32 @da_free(i32) #1

declare dso_local i32 @bfree(%struct.obs_x264*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
