; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_crop-filter.c_crop_filter_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_crop-filter.c_crop_filter_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crop_filter_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @crop_filter_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crop_filter_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.crop_filter_data*, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.crop_filter_data*
  store %struct.crop_filter_data* %7, %struct.crop_filter_data** %5, align 8
  %8 = load %struct.crop_filter_data*, %struct.crop_filter_data** %5, align 8
  %9 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %8, i32 0, i32 1
  %10 = call i32 @vec2_zero(i32* %9)
  %11 = load %struct.crop_filter_data*, %struct.crop_filter_data** %5, align 8
  %12 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %11, i32 0, i32 0
  %13 = call i32 @vec2_zero(i32* %12)
  %14 = load %struct.crop_filter_data*, %struct.crop_filter_data** %5, align 8
  %15 = load %struct.crop_filter_data*, %struct.crop_filter_data** %5, align 8
  %16 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %15, i32 0, i32 1
  %17 = load %struct.crop_filter_data*, %struct.crop_filter_data** %5, align 8
  %18 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %17, i32 0, i32 0
  %19 = call i32 @calc_crop_dimensions(%struct.crop_filter_data* %14, i32* %16, i32* %18)
  %20 = load float, float* %4, align 4
  %21 = call i32 @UNUSED_PARAMETER(float %20)
  ret void
}

declare dso_local i32 @vec2_zero(i32*) #1

declare dso_local i32 @calc_crop_dimensions(%struct.crop_filter_data*, i32*, i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
