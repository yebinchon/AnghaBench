; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_async-delay-filter.c_async_delay_filter_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_async-delay-filter.c_async_delay_filter_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_delay_data = type { i64, i32, i32, i32, i32, i32 }

@SETTING_DELAY_MS = common dso_local global i32 0, align 4
@MSEC_TO_NSEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @async_delay_filter_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_delay_filter_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.async_delay_data*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.async_delay_data*
  store %struct.async_delay_data* %8, %struct.async_delay_data** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @SETTING_DELAY_MS, align 4
  %11 = call i64 @obs_data_get_int(i32* %9, i32 %10)
  %12 = load i64, i64* @MSEC_TO_NSEC, align 8
  %13 = mul nsw i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.async_delay_data*, %struct.async_delay_data** %5, align 8
  %16 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.async_delay_data*, %struct.async_delay_data** %5, align 8
  %21 = load %struct.async_delay_data*, %struct.async_delay_data** %5, align 8
  %22 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @obs_filter_get_parent(i32 %23)
  %25 = call i32 @free_video_data(%struct.async_delay_data* %20, i32 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.async_delay_data*, %struct.async_delay_data** %5, align 8
  %28 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %27, i32 0, i32 1
  store i32 1, i32* %28, align 8
  %29 = load %struct.async_delay_data*, %struct.async_delay_data** %5, align 8
  %30 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %29, i32 0, i32 2
  store i32 1, i32* %30, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.async_delay_data*, %struct.async_delay_data** %5, align 8
  %33 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.async_delay_data*, %struct.async_delay_data** %5, align 8
  %35 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %34, i32 0, i32 3
  store i32 0, i32* %35, align 8
  %36 = load %struct.async_delay_data*, %struct.async_delay_data** %5, align 8
  %37 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %36, i32 0, i32 4
  store i32 0, i32* %37, align 4
  ret void
}

declare dso_local i64 @obs_data_get_int(i32*, i32) #1

declare dso_local i32 @free_video_data(%struct.async_delay_data*, i32) #1

declare dso_local i32 @obs_filter_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
