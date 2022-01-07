; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_default_raw_video_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_default_raw_video_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_data = type { i32 }
%struct.obs_output = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, %struct.video_data*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.video_data*)* @default_raw_video_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_raw_video_callback(i8* %0, %struct.video_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.video_data*, align 8
  %5 = alloca %struct.obs_output*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.video_data* %1, %struct.video_data** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.obs_output*
  store %struct.obs_output* %7, %struct.obs_output** %5, align 8
  %8 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %9 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %8, i32 0, i32 3
  %10 = load %struct.video_data*, %struct.video_data** %4, align 8
  %11 = getelementptr inbounds %struct.video_data, %struct.video_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @video_pause_check(i32* %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %18 = call i64 @data_active(%struct.obs_output* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %22 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (i32, %struct.video_data*)*, i32 (i32, %struct.video_data*)** %23, align 8
  %25 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %26 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.video_data*, %struct.video_data** %4, align 8
  %30 = call i32 %24(i32 %28, %struct.video_data* %29)
  br label %31

31:                                               ; preds = %20, %16
  %32 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %33 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %31, %15
  ret void
}

declare dso_local i64 @video_pause_check(i32*, i32) #1

declare dso_local i64 @data_active(%struct.obs_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
