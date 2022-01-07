; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_async-delay-filter.c_async_delay_filter_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_async-delay-filter.c_async_delay_filter_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source_frame = type { i64 }
%struct.async_delay_data = type { i32, i64, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_source_frame* (i8*, %struct.obs_source_frame*)* @async_delay_filter_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_source_frame* @async_delay_filter_video(i8* %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca %struct.obs_source_frame*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.obs_source_frame*, align 8
  %6 = alloca %struct.async_delay_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.obs_source_frame*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.async_delay_data*
  store %struct.async_delay_data* %11, %struct.async_delay_data** %6, align 8
  %12 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %13 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @obs_filter_get_parent(i32 %14)
  store i32* %15, i32** %7, align 8
  %16 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %17 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %22 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %25 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @is_timestamp_jump(i64 %23, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20, %2
  %30 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @free_video_data(%struct.async_delay_data* %30, i32* %31)
  %33 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %34 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  %35 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %36 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %29, %20
  %38 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %39 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %42 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %44 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %43, i32 0, i32 4
  %45 = call i32 @circlebuf_push_back(i32* %44, %struct.obs_source_frame** %5, i32 8)
  %46 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %47 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %46, i32 0, i32 4
  %48 = call i32 @circlebuf_peek_front(i32* %47, %struct.obs_source_frame** %8, i32 8)
  %49 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %50 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.obs_source_frame*, %struct.obs_source_frame** %8, align 8
  %53 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  store i64 %55, i64* %9, align 8
  %56 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %57 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %37
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %63 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store %struct.obs_source_frame* null, %struct.obs_source_frame** %3, align 8
  br label %80

67:                                               ; preds = %60, %37
  %68 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %69 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %68, i32 0, i32 4
  %70 = call i32 @circlebuf_pop_front(i32* %69, i32* null, i32 8)
  %71 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %72 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load %struct.async_delay_data*, %struct.async_delay_data** %6, align 8
  %77 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %67
  %79 = load %struct.obs_source_frame*, %struct.obs_source_frame** %8, align 8
  store %struct.obs_source_frame* %79, %struct.obs_source_frame** %3, align 8
  br label %80

80:                                               ; preds = %78, %66
  %81 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  ret %struct.obs_source_frame* %81
}

declare dso_local i32* @obs_filter_get_parent(i32) #1

declare dso_local i64 @is_timestamp_jump(i64, i64) #1

declare dso_local i32 @free_video_data(%struct.async_delay_data*, i32*) #1

declare dso_local i32 @circlebuf_push_back(i32*, %struct.obs_source_frame**, i32) #1

declare dso_local i32 @circlebuf_peek_front(i32*, %struct.obs_source_frame**, i32) #1

declare dso_local i32 @circlebuf_pop_front(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
