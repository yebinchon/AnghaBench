; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_filter_async_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_filter_async_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.obs_source** }
%struct.obs_source = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.obs_audio_data* (i64, %struct.obs_audio_data*)* }
%struct.obs_audio_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_audio_data* (%struct.TYPE_9__*, %struct.obs_audio_data*)* @filter_async_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_audio_data* @filter_async_audio(%struct.TYPE_9__* %0, %struct.obs_audio_data* %1) #0 {
  %3 = alloca %struct.obs_audio_data*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.obs_audio_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.obs_source*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.obs_audio_data* %1, %struct.obs_audio_data** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %57, %2
  %13 = load i64, i64* %6, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %60

15:                                               ; preds = %12
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.obs_source**, %struct.obs_source*** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds %struct.obs_source*, %struct.obs_source** %19, i64 %21
  %23 = load %struct.obs_source*, %struct.obs_source** %22, align 8
  store %struct.obs_source* %23, %struct.obs_source** %7, align 8
  %24 = load %struct.obs_source*, %struct.obs_source** %7, align 8
  %25 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %15
  br label %57

29:                                               ; preds = %15
  %30 = load %struct.obs_source*, %struct.obs_source** %7, align 8
  %31 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load %struct.obs_source*, %struct.obs_source** %7, align 8
  %37 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.obs_audio_data* (i64, %struct.obs_audio_data*)*, %struct.obs_audio_data* (i64, %struct.obs_audio_data*)** %38, align 8
  %40 = icmp ne %struct.obs_audio_data* (i64, %struct.obs_audio_data*)* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.obs_source*, %struct.obs_source** %7, align 8
  %43 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.obs_audio_data* (i64, %struct.obs_audio_data*)*, %struct.obs_audio_data* (i64, %struct.obs_audio_data*)** %44, align 8
  %46 = load %struct.obs_source*, %struct.obs_source** %7, align 8
  %47 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %51 = call %struct.obs_audio_data* %45(i64 %49, %struct.obs_audio_data* %50)
  store %struct.obs_audio_data* %51, %struct.obs_audio_data** %5, align 8
  %52 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %53 = icmp ne %struct.obs_audio_data* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %41
  store %struct.obs_audio_data* null, %struct.obs_audio_data** %3, align 8
  br label %62

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %35, %29
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, -1
  store i64 %59, i64* %6, align 8
  br label %12

60:                                               ; preds = %12
  %61 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  store %struct.obs_audio_data* %61, %struct.obs_audio_data** %3, align 8
  br label %62

62:                                               ; preds = %60, %54
  %63 = load %struct.obs_audio_data*, %struct.obs_audio_data** %3, align 8
  ret %struct.obs_audio_data* %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
