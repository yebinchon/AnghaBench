; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-key-filter.c_color_key_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-key-filter.c_color_key_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_key_filter_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GS_RGBA = common dso_local global i32 0, align 4
@OBS_ALLOW_DIRECT_RENDERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @color_key_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_key_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.color_key_filter_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.color_key_filter_data*
  store %struct.color_key_filter_data* %7, %struct.color_key_filter_data** %5, align 8
  %8 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %9 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GS_RGBA, align 4
  %12 = load i32, i32* @OBS_ALLOW_DIRECT_RENDERING, align 4
  %13 = call i32 @obs_source_process_filter_begin(i32 %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %73

16:                                               ; preds = %2
  %17 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %18 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %17, i32 0, i32 15
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %21 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %20, i32 0, i32 14
  %22 = call i32 @gs_effect_set_vec4(i32 %19, i32* %21)
  %23 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %24 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %23, i32 0, i32 13
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %27 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gs_effect_set_float(i32 %25, i32 %28)
  %30 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %31 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %34 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @gs_effect_set_float(i32 %32, i32 %35)
  %37 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %38 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %41 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gs_effect_set_float(i32 %39, i32 %42)
  %44 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %45 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %48 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %47, i32 0, i32 6
  %49 = call i32 @gs_effect_set_vec4(i32 %46, i32* %48)
  %50 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %51 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %54 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gs_effect_set_float(i32 %52, i32 %55)
  %57 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %58 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %61 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @gs_effect_set_float(i32 %59, i32 %62)
  %64 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %65 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %5, align 8
  %68 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @obs_source_process_filter_end(i32 %66, i32 %69, i32 0, i32 0)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @UNUSED_PARAMETER(i32* %71)
  br label %73

73:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @obs_source_process_filter_begin(i32, i32, i32) #1

declare dso_local i32 @gs_effect_set_vec4(i32, i32*) #1

declare dso_local i32 @gs_effect_set_float(i32, i32) #1

declare dso_local i32 @obs_source_process_filter_end(i32, i32, i32, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
