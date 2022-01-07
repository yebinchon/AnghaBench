; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_extra_output_conversion.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_extra_output_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { i32 }

@AF_FORMAT_FLOAT = common dso_local global i32 0, align 4
@AF_FORMAT_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_aframe*)* @extra_output_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extra_output_conversion(%struct.mp_aframe* %0) #0 {
  %2 = alloca %struct.mp_aframe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mp_aframe* %0, %struct.mp_aframe** %2, align 8
  %11 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %12 = call i32 @mp_aframe_get_format(%struct.mp_aframe* %11)
  %13 = call i32 @af_fmt_from_planar(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %15 = call i32 @mp_aframe_get_planes(%struct.mp_aframe* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %17 = call i32** @mp_aframe_get_data_rw(%struct.mp_aframe* %16)
  store i32** %17, i32*** %5, align 8
  %18 = load i32**, i32*** %5, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %91

21:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %88, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %91

26:                                               ; preds = %22
  %27 = load i32**, i32*** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %7, align 8
  %33 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %34 = call i32 @mp_aframe_get_total_plane_samples(%struct.mp_aframe* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @AF_FORMAT_FLOAT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = bitcast i8* %44 to float*
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = load float, float* %48, align 4
  %50 = call float @av_clipf(float %49, float -1.000000e+00, float 1.000000e+00)
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to float*
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  store float %50, float* %55, align 4
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %39

59:                                               ; preds = %39
  br label %87

60:                                               ; preds = %26
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @AF_FORMAT_DOUBLE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %82, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  %71 = bitcast i8* %70 to double*
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  %75 = load double, double* %74, align 8
  %76 = call double @MPCLAMP(double %75, double -1.000000e+00, double 1.000000e+00)
  %77 = load i8*, i8** %7, align 8
  %78 = bitcast i8* %77 to double*
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  store double %76, double* %81, align 8
  br label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %65

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85, %60
  br label %87

87:                                               ; preds = %86, %59
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %22

91:                                               ; preds = %20, %22
  ret void
}

declare dso_local i32 @af_fmt_from_planar(i32) #1

declare dso_local i32 @mp_aframe_get_format(%struct.mp_aframe*) #1

declare dso_local i32 @mp_aframe_get_planes(%struct.mp_aframe*) #1

declare dso_local i32** @mp_aframe_get_data_rw(%struct.mp_aframe*) #1

declare dso_local i32 @mp_aframe_get_total_plane_samples(%struct.mp_aframe*) #1

declare dso_local float @av_clipf(float, float, float) #1

declare dso_local double @MPCLAMP(double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
