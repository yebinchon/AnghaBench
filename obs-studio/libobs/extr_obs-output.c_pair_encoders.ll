; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_pair_encoders.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_pair_encoders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.obs_encoder* }
%struct.obs_encoder = type { i32, i32, %struct.obs_encoder*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64)* @pair_encoders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pair_encoders(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.obs_encoder*, align 8
  %6 = alloca %struct.obs_encoder*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.obs_encoder*, %struct.obs_encoder** %8, align 8
  store %struct.obs_encoder* %9, %struct.obs_encoder** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call %struct.obs_encoder* @find_inactive_audio_encoder(%struct.TYPE_4__* %10, i64 %11)
  store %struct.obs_encoder* %12, %struct.obs_encoder** %6, align 8
  %13 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %14 = icmp ne %struct.obs_encoder* %13, null
  br i1 %14, label %15, label %60

15:                                               ; preds = %2
  %16 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %17 = icmp ne %struct.obs_encoder* %16, null
  br i1 %17, label %18, label %60

18:                                               ; preds = %15
  %19 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %20 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %19, i32 0, i32 1
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %23 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %22, i32 0, i32 1
  %24 = call i32 @pthread_mutex_lock(i32* %23)
  %25 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %26 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %18
  %30 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %31 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %29
  %35 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %36 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %35, i32 0, i32 2
  %37 = load %struct.obs_encoder*, %struct.obs_encoder** %36, align 8
  %38 = icmp ne %struct.obs_encoder* %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %34
  %40 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %41 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %40, i32 0, i32 2
  %42 = load %struct.obs_encoder*, %struct.obs_encoder** %41, align 8
  %43 = icmp ne %struct.obs_encoder* %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %46 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %48 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %49 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %48, i32 0, i32 2
  store %struct.obs_encoder* %47, %struct.obs_encoder** %49, align 8
  %50 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %51 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %52 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %51, i32 0, i32 2
  store %struct.obs_encoder* %50, %struct.obs_encoder** %52, align 8
  br label %53

53:                                               ; preds = %44, %39, %34, %29, %18
  %54 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %55 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %54, i32 0, i32 1
  %56 = call i32 @pthread_mutex_unlock(i32* %55)
  %57 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %58 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %57, i32 0, i32 1
  %59 = call i32 @pthread_mutex_unlock(i32* %58)
  br label %60

60:                                               ; preds = %53, %15, %2
  ret void
}

declare dso_local %struct.obs_encoder* @find_inactive_audio_encoder(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
