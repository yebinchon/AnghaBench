; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_downmix_to_mono_planar.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_downmix_to_mono_planar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.obs_source = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@obs = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_source*, i64)* @downmix_to_mono_planar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @downmix_to_mono_planar(%struct.obs_source* %0, i64 %1) #0 {
  %3 = alloca %struct.obs_source*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca float, align 4
  %7 = alloca float**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.obs_source* %0, %struct.obs_source** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @audio_output_get_channels(i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = uitofp i64 %18 to float
  %20 = fdiv float 1.000000e+00, %19
  store float %20, float* %6, align 4
  %21 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %22 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to float**
  store float** %25, float*** %7, align 8
  store i64 1, i64* %8, align 8
  br label %26

26:                                               ; preds = %54, %2
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %50, %30
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load float**, float*** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds float*, float** %36, i64 %37
  %39 = load float*, float** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds float, float* %39, i64 %40
  %42 = load float, float* %41, align 4
  %43 = load float**, float*** %7, align 8
  %44 = getelementptr inbounds float*, float** %43, i64 0
  %45 = load float*, float** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds float, float* %45, i64 %46
  %48 = load float, float* %47, align 4
  %49 = fadd float %48, %42
  store float %49, float* %47, align 4
  br label %50

50:                                               ; preds = %35
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %31

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %8, align 8
  br label %26

57:                                               ; preds = %26
  store i64 0, i64* %10, align 8
  br label %58

58:                                               ; preds = %71, %57
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load float, float* %6, align 4
  %64 = load float**, float*** %7, align 8
  %65 = getelementptr inbounds float*, float** %64, i64 0
  %66 = load float*, float** %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds float, float* %66, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fmul float %69, %63
  store float %70, float* %68, align 4
  br label %71

71:                                               ; preds = %62
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %10, align 8
  br label %58

74:                                               ; preds = %58
  store i64 1, i64* %11, align 8
  br label %75

75:                                               ; preds = %101, %74
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  store i64 0, i64* %12, align 8
  br label %80

80:                                               ; preds = %97, %79
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load float**, float*** %7, align 8
  %86 = getelementptr inbounds float*, float** %85, i64 0
  %87 = load float*, float** %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds float, float* %87, i64 %88
  %90 = load float, float* %89, align 4
  %91 = load float**, float*** %7, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds float*, float** %91, i64 %92
  %94 = load float*, float** %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds float, float* %94, i64 %95
  store float %90, float* %96, align 4
  br label %97

97:                                               ; preds = %84
  %98 = load i64, i64* %12, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %12, align 8
  br label %80

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %11, align 8
  br label %75

104:                                              ; preds = %75
  ret void
}

declare dso_local i64 @audio_output_get_channels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
