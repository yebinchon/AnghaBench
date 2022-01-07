; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_init_gpu_conversion.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_init_gpu_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { i32 }
%struct.obs_source_frame = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_source*, %struct.obs_source_frame*)* @init_gpu_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_gpu_conversion(%struct.obs_source* %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.obs_source*, align 8
  %5 = alloca %struct.obs_source_frame*, align 8
  store %struct.obs_source* %0, %struct.obs_source** %4, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %5, align 8
  %6 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %7 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %10 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @get_convert_type(i32 %8, i32 %11)
  switch i32 %12, label %63 [
    i32 136, label %13
    i32 140, label %17
    i32 138, label %21
    i32 129, label %25
    i32 135, label %29
    i32 132, label %33
    i32 128, label %37
    i32 131, label %41
    i32 139, label %45
    i32 137, label %49
    i32 134, label %53
    i32 133, label %57
    i32 130, label %61
  ]

13:                                               ; preds = %2
  %14 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %15 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %16 = call i32 @set_packed422_sizes(%struct.obs_source* %14, %struct.obs_source_frame* %15)
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %19 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %20 = call i32 @set_planar420_sizes(%struct.obs_source* %18, %struct.obs_source_frame* %19)
  store i32 %20, i32* %3, align 4
  br label %64

21:                                               ; preds = %2
  %22 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %23 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %24 = call i32 @set_planar422_sizes(%struct.obs_source* %22, %struct.obs_source_frame* %23)
  store i32 %24, i32* %3, align 4
  br label %64

25:                                               ; preds = %2
  %26 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %27 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %28 = call i32 @set_nv12_sizes(%struct.obs_source* %26, %struct.obs_source_frame* %27)
  store i32 %28, i32* %3, align 4
  br label %64

29:                                               ; preds = %2
  %30 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %31 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %32 = call i32 @set_planar444_sizes(%struct.obs_source* %30, %struct.obs_source_frame* %31)
  store i32 %32, i32* %3, align 4
  br label %64

33:                                               ; preds = %2
  %34 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %35 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %36 = call i32 @set_y800_sizes(%struct.obs_source* %34, %struct.obs_source_frame* %35)
  store i32 %36, i32* %3, align 4
  br label %64

37:                                               ; preds = %2
  %38 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %39 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %40 = call i32 @set_rgb_limited_sizes(%struct.obs_source* %38, %struct.obs_source_frame* %39)
  store i32 %40, i32* %3, align 4
  br label %64

41:                                               ; preds = %2
  %42 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %43 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %44 = call i32 @set_bgr3_sizes(%struct.obs_source* %42, %struct.obs_source_frame* %43)
  store i32 %44, i32* %3, align 4
  br label %64

45:                                               ; preds = %2
  %46 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %47 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %48 = call i32 @set_planar420_alpha_sizes(%struct.obs_source* %46, %struct.obs_source_frame* %47)
  store i32 %48, i32* %3, align 4
  br label %64

49:                                               ; preds = %2
  %50 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %51 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %52 = call i32 @set_planar422_alpha_sizes(%struct.obs_source* %50, %struct.obs_source_frame* %51)
  store i32 %52, i32* %3, align 4
  br label %64

53:                                               ; preds = %2
  %54 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %55 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %56 = call i32 @set_planar444_alpha_sizes(%struct.obs_source* %54, %struct.obs_source_frame* %55)
  store i32 %56, i32* %3, align 4
  br label %64

57:                                               ; preds = %2
  %58 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %59 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %60 = call i32 @set_packed444_alpha_sizes(%struct.obs_source* %58, %struct.obs_source_frame* %59)
  store i32 %60, i32* %3, align 4
  br label %64

61:                                               ; preds = %2
  %62 = call i32 @assert(i32 0)
  br label %63

63:                                               ; preds = %2, %61
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @get_convert_type(i32, i32) #1

declare dso_local i32 @set_packed422_sizes(%struct.obs_source*, %struct.obs_source_frame*) #1

declare dso_local i32 @set_planar420_sizes(%struct.obs_source*, %struct.obs_source_frame*) #1

declare dso_local i32 @set_planar422_sizes(%struct.obs_source*, %struct.obs_source_frame*) #1

declare dso_local i32 @set_nv12_sizes(%struct.obs_source*, %struct.obs_source_frame*) #1

declare dso_local i32 @set_planar444_sizes(%struct.obs_source*, %struct.obs_source_frame*) #1

declare dso_local i32 @set_y800_sizes(%struct.obs_source*, %struct.obs_source_frame*) #1

declare dso_local i32 @set_rgb_limited_sizes(%struct.obs_source*, %struct.obs_source_frame*) #1

declare dso_local i32 @set_bgr3_sizes(%struct.obs_source*, %struct.obs_source_frame*) #1

declare dso_local i32 @set_planar420_alpha_sizes(%struct.obs_source*, %struct.obs_source_frame*) #1

declare dso_local i32 @set_planar422_alpha_sizes(%struct.obs_source*, %struct.obs_source_frame*) #1

declare dso_local i32 @set_planar444_alpha_sizes(%struct.obs_source*, %struct.obs_source_frame*) #1

declare dso_local i32 @set_packed444_alpha_sizes(%struct.obs_source*, %struct.obs_source_frame*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
