; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_mask-filter.c_mask_filter_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_mask-filter.c_mask_filter_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mask_filter_data = type { float, i64, i8*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @mask_filter_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mask_filter_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.mask_filter_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.mask_filter_data*
  store %struct.mask_filter_data* %9, %struct.mask_filter_data** %5, align 8
  %10 = load float, float* %4, align 4
  %11 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %12 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %11, i32 0, i32 0
  %13 = load float, float* %12, align 8
  %14 = fadd float %13, %10
  store float %14, float* %12, align 8
  %15 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %16 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %15, i32 0, i32 0
  %17 = load float, float* %16, align 8
  %18 = fcmp oge float %17, 1.000000e+00
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %21 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @get_modified_timestamp(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %25 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %24, i32 0, i32 0
  store float 0.000000e+00, float* %25, align 8
  %26 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %27 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %33 = call i32 @mask_filter_image_load(%struct.mask_filter_data* %32)
  br label %34

34:                                               ; preds = %31, %19
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %37 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %35
  %42 = call i8* (...) @obs_get_video_frame_time()
  store i8* %42, i8** %7, align 8
  %43 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %44 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %50 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %47, %41
  %52 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %53 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %52, i32 0, i32 3
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %56 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = ptrtoint i8* %54 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @gs_image_file_tick(%struct.TYPE_3__* %53, i8* %61)
  %63 = call i32 (...) @obs_enter_graphics()
  %64 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %65 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %64, i32 0, i32 3
  %66 = call i32 @gs_image_file_update_texture(%struct.TYPE_3__* %65)
  %67 = call i32 (...) @obs_leave_graphics()
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %70 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %51, %35
  ret void
}

declare dso_local i64 @get_modified_timestamp(i32) #1

declare dso_local i32 @mask_filter_image_load(%struct.mask_filter_data*) #1

declare dso_local i8* @obs_get_video_frame_time(...) #1

declare dso_local i32 @gs_image_file_tick(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_image_file_update_texture(%struct.TYPE_3__*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
