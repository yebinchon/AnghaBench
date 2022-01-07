; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gpu-delay.c_update_interval.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gpu-delay.c_update_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpu_delay_filter_data = type { i32, i32, i32, i32 }
%struct.frame = type { i32 }

@GS_RGBA = common dso_local global i32 0, align 4
@GS_ZS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpu_delay_filter_data*, i32)* @update_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_interval(%struct.gpu_delay_filter_data* %0, i32 %1) #0 {
  %3 = alloca %struct.gpu_delay_filter_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.frame*, align 8
  %9 = alloca %struct.frame, align 4
  store %struct.gpu_delay_filter_data* %0, %struct.gpu_delay_filter_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %11 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %16 = call i32 @free_textures(%struct.gpu_delay_filter_data* %15)
  br label %87

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %20 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %22 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sdiv i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %29 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %28, i32 0, i32 2
  %30 = call i64 @num_frames(i32* %29)
  %31 = icmp ugt i64 %27, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %17
  %33 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %34 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %33, i32 0, i32 2
  %35 = call i64 @num_frames(i32* %34)
  store i64 %35, i64* %6, align 8
  %36 = call i32 (...) @obs_enter_graphics()
  %37 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %38 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %37, i32 0, i32 2
  %39 = load i64, i64* %5, align 8
  %40 = mul i64 %39, 4
  %41 = call i32 @circlebuf_upsize(i32* %38, i64 %40)
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %58, %32
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %49 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %48, i32 0, i32 2
  %50 = load i64, i64* %7, align 8
  %51 = mul i64 %50, 4
  %52 = call %struct.frame* @circlebuf_data(i32* %49, i64 %51)
  store %struct.frame* %52, %struct.frame** %8, align 8
  %53 = load i32, i32* @GS_RGBA, align 4
  %54 = load i32, i32* @GS_ZS_NONE, align 4
  %55 = call i32 @gs_texrender_create(i32 %53, i32 %54)
  %56 = load %struct.frame*, %struct.frame** %8, align 8
  %57 = getelementptr inbounds %struct.frame, %struct.frame* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %43

61:                                               ; preds = %43
  %62 = call i32 (...) @obs_leave_graphics()
  br label %87

63:                                               ; preds = %17
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %66 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %65, i32 0, i32 2
  %67 = call i64 @num_frames(i32* %66)
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = call i32 (...) @obs_enter_graphics()
  br label %71

71:                                               ; preds = %77, %69
  %72 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %73 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %72, i32 0, i32 2
  %74 = call i64 @num_frames(i32* %73)
  %75 = load i64, i64* %5, align 8
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %79 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %78, i32 0, i32 2
  %80 = call i32 @circlebuf_pop_front(i32* %79, %struct.frame* %9, i32 4)
  %81 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @gs_texrender_destroy(i32 %82)
  br label %71

84:                                               ; preds = %71
  %85 = call i32 (...) @obs_leave_graphics()
  br label %86

86:                                               ; preds = %84, %63
  br label %87

87:                                               ; preds = %14, %86, %61
  ret void
}

declare dso_local i32 @free_textures(%struct.gpu_delay_filter_data*) #1

declare dso_local i64 @num_frames(i32*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @circlebuf_upsize(i32*, i64) #1

declare dso_local %struct.frame* @circlebuf_data(i32*, i64) #1

declare dso_local i32 @gs_texrender_create(i32, i32) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @circlebuf_pop_front(i32*, %struct.frame*, i32) #1

declare dso_local i32 @gs_texrender_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
