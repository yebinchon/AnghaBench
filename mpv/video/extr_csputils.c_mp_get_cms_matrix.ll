; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_get_cms_matrix.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_get_cms_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_csp_primaries = type { i32 }

@MP_INTENT_SATURATION = common dso_local global i32 0, align 4
@MP_INTENT_ABSOLUTE_COLORIMETRIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_get_cms_matrix(i32 %0, i32 %1, i32 %2, [3 x float]* %3) #0 {
  %5 = alloca %struct.mp_csp_primaries, align 4
  %6 = alloca %struct.mp_csp_primaries, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x float]*, align 8
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %5, i32 0, i32 0
  store i32 %0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %6, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %7, align 4
  store [3 x float]* %3, [3 x float]** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MP_INTENT_SATURATION, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load [3 x float]*, [3 x float]** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 %23
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x float], [3 x float]* %24, i64 0, i64 %26
  store float 1.000000e+00, float* %27, align 4
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  br label %17

31:                                               ; preds = %17
  br label %63

32:                                               ; preds = %4
  %33 = load [3 x float]*, [3 x float]** %8, align 8
  %34 = bitcast [3 x float]* %33 to float**
  %35 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mp_get_rgb2xyz_matrix(i32 %36, float** %34)
  %38 = load [3 x float]*, [3 x float]** %8, align 8
  %39 = bitcast [3 x float]* %38 to float**
  %40 = call i32 @mp_invert_matrix3x3(float** %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MP_INTENT_ABSOLUTE_COLORIMETRIC, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load [3 x float]*, [3 x float]** %8, align 8
  %50 = bitcast [3 x float]* %49 to float**
  %51 = call i32 @mp_apply_chromatic_adaptation(i32 %46, i32 %48, float** %50)
  br label %52

52:                                               ; preds = %44, %32
  %53 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 0
  %54 = bitcast [3 x float]* %53 to float**
  %55 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mp_get_rgb2xyz_matrix(i32 %56, float** %54)
  %58 = load [3 x float]*, [3 x float]** %8, align 8
  %59 = bitcast [3 x float]* %58 to float**
  %60 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %9, i64 0, i64 0
  %61 = bitcast [3 x float]* %60 to float**
  %62 = call i32 @mp_mul_matrix3x3(float** %59, float** %61)
  br label %63

63:                                               ; preds = %52, %31
  ret void
}

declare dso_local i32 @mp_get_rgb2xyz_matrix(i32, float**) #1

declare dso_local i32 @mp_invert_matrix3x3(float**) #1

declare dso_local i32 @mp_apply_chromatic_adaptation(i32, i32, float**) #1

declare dso_local i32 @mp_mul_matrix3x3(float**, float**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
