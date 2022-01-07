; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_has_scaling.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_has_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_output*)* @has_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_scaling(%struct.obs_output* %0) #0 {
  %2 = alloca %struct.obs_output*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.obs_output* %0, %struct.obs_output** %2, align 8
  %5 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %6 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @video_output_get_width(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %10 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @video_output_get_height(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %14 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %19 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %25 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %31 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i1 [ true, %22 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %34, %17, %1
  %37 = phi i1 [ false, %17 ], [ false, %1 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local i64 @video_output_get_width(i32) #1

declare dso_local i64 @video_output_get_height(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
