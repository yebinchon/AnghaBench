; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_cache_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_cache_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, %struct.async_frame* }
%struct.async_frame = type { i32, i64, %struct.obs_source_frame* }
%struct.TYPE_3__ = type { i64 }
%struct.obs_source_frame = type { i32, i32, i32, i32, i32 }

@MAX_ASYNC_FRAMES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_source_frame* (%struct.obs_source*, %struct.obs_source_frame*)* @cache_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_source_frame* @cache_video(%struct.obs_source* %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca %struct.obs_source_frame*, align 8
  %4 = alloca %struct.obs_source*, align 8
  %5 = alloca %struct.obs_source_frame*, align 8
  %6 = alloca %struct.obs_source_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.async_frame*, align 8
  %10 = alloca %struct.async_frame, align 8
  store %struct.obs_source* %0, %struct.obs_source** %4, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %5, align 8
  store %struct.obs_source_frame* null, %struct.obs_source_frame** %6, align 8
  %11 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %12 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %11, i32 0, i32 1
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %15 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAX_ASYNC_FRAMES, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %22 = call i32 @free_async_cache(%struct.obs_source* %21)
  %23 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %24 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %26 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %25, i32 0, i32 1
  %27 = call i32 @pthread_mutex_unlock(i32* %26)
  store %struct.obs_source_frame* null, %struct.obs_source_frame** %3, align 8
  br label %130

28:                                               ; preds = %2
  %29 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %30 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %31 = call i64 @async_texture_changed(%struct.obs_source* %29, %struct.obs_source_frame* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %35 = call i32 @free_async_cache(%struct.obs_source* %34)
  %36 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %37 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %40 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %42 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %45 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %33, %28
  %47 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %48 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %52 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %54 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %57 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  store i64 0, i64* %8, align 8
  br label %58

58:                                               ; preds = %88, %46
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %61 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %58
  %66 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %67 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.async_frame*, %struct.async_frame** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %69, i64 %70
  store %struct.async_frame* %71, %struct.async_frame** %9, align 8
  %72 = load %struct.async_frame*, %struct.async_frame** %9, align 8
  %73 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %65
  %77 = load %struct.async_frame*, %struct.async_frame** %9, align 8
  %78 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %77, i32 0, i32 2
  %79 = load %struct.obs_source_frame*, %struct.obs_source_frame** %78, align 8
  store %struct.obs_source_frame* %79, %struct.obs_source_frame** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %82 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.async_frame*, %struct.async_frame** %9, align 8
  %84 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.async_frame*, %struct.async_frame** %9, align 8
  %86 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  br label %91

87:                                               ; preds = %65
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %58

91:                                               ; preds = %76, %58
  %92 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %93 = call i32 @clean_cache(%struct.obs_source* %92)
  %94 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %95 = icmp ne %struct.obs_source_frame* %94, null
  br i1 %95, label %119, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %99 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %102 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.obs_source_frame* @obs_source_frame_create(i32 %97, i32 %100, i32 %103)
  store %struct.obs_source_frame* %104, %struct.obs_source_frame** %6, align 8
  %105 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %106 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %10, i32 0, i32 2
  store %struct.obs_source_frame* %105, %struct.obs_source_frame** %106, align 8
  %107 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %10, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %10, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %110 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  %111 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %112 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %111, i32 0, i32 2
  %113 = bitcast %struct.TYPE_4__* %112 to { i64, %struct.async_frame* }*
  %114 = getelementptr inbounds { i64, %struct.async_frame* }, { i64, %struct.async_frame* }* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds { i64, %struct.async_frame* }, { i64, %struct.async_frame* }* %113, i32 0, i32 1
  %117 = load %struct.async_frame*, %struct.async_frame** %116, align 8
  %118 = call i32 @da_push_back(i64 %115, %struct.async_frame* %117, %struct.async_frame* %10)
  br label %119

119:                                              ; preds = %96, %91
  %120 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %121 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %120, i32 0, i32 1
  %122 = call i32 @os_atomic_inc_long(i32* %121)
  %123 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %124 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %123, i32 0, i32 1
  %125 = call i32 @pthread_mutex_unlock(i32* %124)
  %126 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %127 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %128 = call i32 @copy_frame_data(%struct.obs_source_frame* %126, %struct.obs_source_frame* %127)
  %129 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  store %struct.obs_source_frame* %129, %struct.obs_source_frame** %3, align 8
  br label %130

130:                                              ; preds = %119, %20
  %131 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  ret %struct.obs_source_frame* %131
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @free_async_cache(%struct.obs_source*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @async_texture_changed(%struct.obs_source*, %struct.obs_source_frame*) #1

declare dso_local i32 @clean_cache(%struct.obs_source*) #1

declare dso_local %struct.obs_source_frame* @obs_source_frame_create(i32, i32, i32) #1

declare dso_local i32 @da_push_back(i64, %struct.async_frame*, %struct.async_frame*) #1

declare dso_local i32 @os_atomic_inc_long(i32*) #1

declare dso_local i32 @copy_frame_data(%struct.obs_source_frame*, %struct.obs_source_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
