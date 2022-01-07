; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gpu-delay.c_check_size.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gpu-delay.c_check_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpu_delay_filter_data = type { i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpu_delay_filter_data*)* @check_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_size(%struct.gpu_delay_filter_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpu_delay_filter_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.gpu_delay_filter_data* %0, %struct.gpu_delay_filter_data** %3, align 8
  %7 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %8 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32* @obs_filter_get_target(i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %17 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %19 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %67

23:                                               ; preds = %1
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @obs_source_get_base_width(i32* %24)
  store i64 %25, i64* %5, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @obs_source_get_base_height(i32* %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %30, %23
  %36 = phi i1 [ false, %23 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %39 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %41 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %67

45:                                               ; preds = %35
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %48 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %54 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51, %45
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %60 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %63 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %3, align 8
  %65 = call i32 @reset_textures(%struct.gpu_delay_filter_data* %64)
  store i32 1, i32* %2, align 4
  br label %67

66:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %57, %44, %22
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32* @obs_filter_get_target(i32) #1

declare dso_local i64 @obs_source_get_base_width(i32*) #1

declare dso_local i64 @obs_source_get_base_height(i32*) #1

declare dso_local i32 @reset_textures(%struct.gpu_delay_filter_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
