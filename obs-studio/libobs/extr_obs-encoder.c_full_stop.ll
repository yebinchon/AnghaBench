; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_full_stop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_full_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.obs_output** }
%struct.obs_output = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @full_stop(%struct.obs_encoder* %0) #0 {
  %2 = alloca %struct.obs_encoder*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.obs_output*, align 8
  store %struct.obs_encoder* %0, %struct.obs_encoder** %2, align 8
  %5 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %6 = icmp ne %struct.obs_encoder* %5, null
  br i1 %6, label %7, label %64

7:                                                ; preds = %1
  %8 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %8, i32 0, i32 3
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %43, %7
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %14 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %11
  %19 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %20 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.obs_output**, %struct.obs_output*** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.obs_output*, %struct.obs_output** %22, i64 %23
  %25 = load %struct.obs_output*, %struct.obs_output** %24, align 8
  store %struct.obs_output* %25, %struct.obs_output** %4, align 8
  %26 = load %struct.obs_output*, %struct.obs_output** %4, align 8
  %27 = call i32 @obs_output_force_stop(%struct.obs_output* %26)
  %28 = load %struct.obs_output*, %struct.obs_output** %4, align 8
  %29 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %28, i32 0, i32 0
  %30 = call i32 @pthread_mutex_lock(i32* %29)
  %31 = load %struct.obs_output*, %struct.obs_output** %4, align 8
  %32 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32*)*, i32 (i32, i32*)** %33, align 8
  %35 = load %struct.obs_output*, %struct.obs_output** %4, align 8
  %36 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %34(i32 %38, i32* null)
  %40 = load %struct.obs_output*, %struct.obs_output** %4, align 8
  %41 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %40, i32 0, i32 0
  %42 = call i32 @pthread_mutex_unlock(i32* %41)
  br label %43

43:                                               ; preds = %18
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %11

46:                                               ; preds = %11
  %47 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %48 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %47, i32 0, i32 3
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  %50 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %51 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %50, i32 0, i32 1
  %52 = call i32 @pthread_mutex_lock(i32* %51)
  %53 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %54 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @da_free(i32 %55)
  %57 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %58 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %57, i32 0, i32 1
  %59 = call i32 @pthread_mutex_unlock(i32* %58)
  %60 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %61 = call i32 @remove_connection(%struct.obs_encoder* %60, i32 0)
  %62 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %63 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %46, %1
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @obs_output_force_stop(%struct.obs_output*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @da_free(i32) #1

declare dso_local i32 @remove_connection(%struct.obs_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
