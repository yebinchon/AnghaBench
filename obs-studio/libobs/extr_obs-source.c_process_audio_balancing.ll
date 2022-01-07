; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_process_audio_balancing.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_process_audio_balancing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_source*, i64, float, i32)* @process_audio_balancing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_audio_balancing(%struct.obs_source* %0, i64 %1, float %2, i32 %3) #0 {
  %5 = alloca %struct.obs_source*, align 8
  %6 = alloca i64, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.obs_source* %0, %struct.obs_source** %5, align 8
  store i64 %1, i64* %6, align 8
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %14 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to float**
  store float** %17, float*** %9, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %140 [
    i32 129, label %19
    i32 128, label %64
    i32 130, label %103
  ]

19:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %60, %19
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %20
  %25 = load float**, float*** %9, align 8
  %26 = getelementptr inbounds float*, float** %25, i64 0
  %27 = load float*, float** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds float, float* %27, i64 %28
  %30 = load float, float* %29, align 4
  %31 = load float, float* %7, align 4
  %32 = fsub float 1.000000e+00, %31
  %33 = load float, float* @M_PI, align 4
  %34 = fdiv float %33, 2.000000e+00
  %35 = fmul float %32, %34
  %36 = call float @sinf(float %35) #2
  %37 = fmul float %30, %36
  %38 = load float**, float*** %9, align 8
  %39 = getelementptr inbounds float*, float** %38, i64 0
  %40 = load float*, float** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds float, float* %40, i64 %41
  store float %37, float* %42, align 4
  %43 = load float**, float*** %9, align 8
  %44 = getelementptr inbounds float*, float** %43, i64 1
  %45 = load float*, float** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds float, float* %45, i64 %46
  %48 = load float, float* %47, align 4
  %49 = load float, float* %7, align 4
  %50 = load float, float* @M_PI, align 4
  %51 = fdiv float %50, 2.000000e+00
  %52 = fmul float %49, %51
  %53 = call float @sinf(float %52) #2
  %54 = fmul float %48, %53
  %55 = load float**, float*** %9, align 8
  %56 = getelementptr inbounds float*, float** %55, i64 1
  %57 = load float*, float** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds float, float* %57, i64 %58
  store float %54, float* %59, align 4
  br label %60

60:                                               ; preds = %24
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %20

63:                                               ; preds = %20
  br label %141

64:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %65

65:                                               ; preds = %99, %64
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %65
  %70 = load float**, float*** %9, align 8
  %71 = getelementptr inbounds float*, float** %70, i64 0
  %72 = load float*, float** %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds float, float* %72, i64 %73
  %75 = load float, float* %74, align 4
  %76 = load float, float* %7, align 4
  %77 = fsub float 1.000000e+00, %76
  %78 = call float @sqrtf(float %77) #2
  %79 = fmul float %75, %78
  %80 = load float**, float*** %9, align 8
  %81 = getelementptr inbounds float*, float** %80, i64 0
  %82 = load float*, float** %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds float, float* %82, i64 %83
  store float %79, float* %84, align 4
  %85 = load float**, float*** %9, align 8
  %86 = getelementptr inbounds float*, float** %85, i64 1
  %87 = load float*, float** %86, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds float, float* %87, i64 %88
  %90 = load float, float* %89, align 4
  %91 = load float, float* %7, align 4
  %92 = call float @sqrtf(float %91) #2
  %93 = fmul float %90, %92
  %94 = load float**, float*** %9, align 8
  %95 = getelementptr inbounds float*, float** %94, i64 1
  %96 = load float*, float** %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr inbounds float, float* %96, i64 %97
  store float %93, float* %98, align 4
  br label %99

99:                                               ; preds = %69
  %100 = load i64, i64* %11, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %11, align 8
  br label %65

102:                                              ; preds = %65
  br label %141

103:                                              ; preds = %4
  store i64 0, i64* %12, align 8
  br label %104

104:                                              ; preds = %136, %103
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* %6, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %139

108:                                              ; preds = %104
  %109 = load float**, float*** %9, align 8
  %110 = getelementptr inbounds float*, float** %109, i64 0
  %111 = load float*, float** %110, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds float, float* %111, i64 %112
  %114 = load float, float* %113, align 4
  %115 = load float, float* %7, align 4
  %116 = fsub float 1.000000e+00, %115
  %117 = fmul float %114, %116
  %118 = load float**, float*** %9, align 8
  %119 = getelementptr inbounds float*, float** %118, i64 0
  %120 = load float*, float** %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds float, float* %120, i64 %121
  store float %117, float* %122, align 4
  %123 = load float**, float*** %9, align 8
  %124 = getelementptr inbounds float*, float** %123, i64 1
  %125 = load float*, float** %124, align 8
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds float, float* %125, i64 %126
  %128 = load float, float* %127, align 4
  %129 = load float, float* %7, align 4
  %130 = fmul float %128, %129
  %131 = load float**, float*** %9, align 8
  %132 = getelementptr inbounds float*, float** %131, i64 1
  %133 = load float*, float** %132, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds float, float* %133, i64 %134
  store float %130, float* %135, align 4
  br label %136

136:                                              ; preds = %108
  %137 = load i64, i64* %12, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %12, align 8
  br label %104

139:                                              ; preds = %104
  br label %141

140:                                              ; preds = %4
  br label %141

141:                                              ; preds = %140, %139, %102, %63
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
