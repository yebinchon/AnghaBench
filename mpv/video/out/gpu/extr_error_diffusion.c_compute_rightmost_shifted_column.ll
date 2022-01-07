; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_error_diffusion.c_compute_rightmost_shifted_column.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_error_diffusion.c_compute_rightmost_shifted_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.error_diffusion_kernel = type { i64**, i32 }

@EF_MAX_DELTA_Y = common dso_local global i32 0, align 4
@EF_MIN_DELTA_X = common dso_local global i32 0, align 4
@EF_MAX_DELTA_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.error_diffusion_kernel*)* @compute_rightmost_shifted_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_rightmost_shifted_column(%struct.error_diffusion_kernel* %0) #0 {
  %2 = alloca %struct.error_diffusion_kernel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.error_diffusion_kernel* %0, %struct.error_diffusion_kernel** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %52, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EF_MAX_DELTA_Y, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %7
  %12 = load i32, i32* @EF_MIN_DELTA_X, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %48, %11
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @EF_MAX_DELTA_X, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %2, align 8
  %19 = getelementptr inbounds %struct.error_diffusion_kernel, %struct.error_diffusion_kernel* %18, i32 0, i32 0
  %20 = load i64**, i64*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64*, i64** %20, i64 %22
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EF_MIN_DELTA_X, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %24, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %2, align 8
  %36 = getelementptr inbounds %struct.error_diffusion_kernel, %struct.error_diffusion_kernel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  %39 = add nsw i32 %33, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @MPMAX(i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %32, %17
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %13

51:                                               ; preds = %13
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %7

55:                                               ; preds = %7
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MPMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
