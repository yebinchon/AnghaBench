; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_mask-filter.c_mask_filter_image_load.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_mask-filter.c_mask_filter_image_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mask_filter_data = type { i8*, %struct.TYPE_3__, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mask_filter_data*)* @mask_filter_image_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mask_filter_image_load(%struct.mask_filter_data* %0) #0 {
  %2 = alloca %struct.mask_filter_data*, align 8
  %3 = alloca i8*, align 8
  store %struct.mask_filter_data* %0, %struct.mask_filter_data** %2, align 8
  %4 = load %struct.mask_filter_data*, %struct.mask_filter_data** %2, align 8
  %5 = call i32 @mask_filter_image_unload(%struct.mask_filter_data* %4)
  %6 = load %struct.mask_filter_data*, %struct.mask_filter_data** %2, align 8
  %7 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @get_modified_timestamp(i8* %17)
  %19 = load %struct.mask_filter_data*, %struct.mask_filter_data** %2, align 8
  %20 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mask_filter_data*, %struct.mask_filter_data** %2, align 8
  %22 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %21, i32 0, i32 1
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @gs_image_file_init(%struct.TYPE_3__* %22, i8* %23)
  %25 = load %struct.mask_filter_data*, %struct.mask_filter_data** %2, align 8
  %26 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = call i32 (...) @obs_enter_graphics()
  %28 = load %struct.mask_filter_data*, %struct.mask_filter_data** %2, align 8
  %29 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %28, i32 0, i32 1
  %30 = call i32 @gs_image_file_init_texture(%struct.TYPE_3__* %29)
  %31 = call i32 (...) @obs_leave_graphics()
  %32 = load %struct.mask_filter_data*, %struct.mask_filter_data** %2, align 8
  %33 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mask_filter_data*, %struct.mask_filter_data** %2, align 8
  %37 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %16, %11, %1
  ret void
}

declare dso_local i32 @mask_filter_image_unload(%struct.mask_filter_data*) #1

declare dso_local i32 @get_modified_timestamp(i8*) #1

declare dso_local i32 @gs_image_file_init(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_image_file_init_texture(%struct.TYPE_3__*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
