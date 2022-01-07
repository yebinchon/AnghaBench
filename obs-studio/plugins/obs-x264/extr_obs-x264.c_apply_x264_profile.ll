; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_apply_x264_profile.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_apply_x264_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_x264 = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to set x264 profile '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_x264*, i8*)* @apply_x264_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_x264_profile(%struct.obs_x264* %0, i8* %1) #0 {
  %3 = alloca %struct.obs_x264*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.obs_x264* %0, %struct.obs_x264** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.obs_x264*, %struct.obs_x264** %3, align 8
  %7 = getelementptr inbounds %struct.obs_x264, %struct.obs_x264* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.obs_x264*, %struct.obs_x264** %3, align 8
  %20 = getelementptr inbounds %struct.obs_x264, %struct.obs_x264* %19, i32 0, i32 0
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @x264_param_apply_profile(i32* %20, i8* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %18
  br label %29

29:                                               ; preds = %28, %13, %10, %2
  ret void
}

declare dso_local i32 @x264_param_apply_profile(i32*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
