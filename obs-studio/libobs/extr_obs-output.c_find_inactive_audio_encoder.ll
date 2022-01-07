; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_find_inactive_audio_encoder.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_find_inactive_audio_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.obs_encoder** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_encoder* (%struct.TYPE_3__*, i64)* @find_inactive_audio_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_encoder* @find_inactive_audio_encoder(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.obs_encoder*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.obs_encoder*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.obs_encoder**, %struct.obs_encoder*** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.obs_encoder*, %struct.obs_encoder** %15, i64 %16
  %18 = load %struct.obs_encoder*, %struct.obs_encoder** %17, align 8
  store %struct.obs_encoder* %18, %struct.obs_encoder** %7, align 8
  %19 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %20 = icmp ne %struct.obs_encoder* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %12
  %22 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %23 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %28 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  store %struct.obs_encoder* %32, %struct.obs_encoder** %3, align 8
  br label %38

33:                                               ; preds = %26, %21, %12
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %6, align 8
  br label %8

37:                                               ; preds = %8
  store %struct.obs_encoder* null, %struct.obs_encoder** %3, align 8
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  ret %struct.obs_encoder* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
