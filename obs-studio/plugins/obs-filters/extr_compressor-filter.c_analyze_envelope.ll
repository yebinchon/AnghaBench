; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_analyze_envelope.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_analyze_envelope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor_data = type { i32, float, float, float*, i64, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.compressor_data*, float**, i32)* @analyze_envelope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_envelope(%struct.compressor_data* %0, float** %1, i32 %2) #0 {
  %4 = alloca %struct.compressor_data*, align 8
  %5 = alloca float**, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i64, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  store %struct.compressor_data* %0, %struct.compressor_data** %4, align 8
  store float** %1, float*** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.compressor_data*, %struct.compressor_data** %4, align 8
  %15 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.compressor_data*, %struct.compressor_data** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @resize_env_buffer(%struct.compressor_data* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load %struct.compressor_data*, %struct.compressor_data** %4, align 8
  %25 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %24, i32 0, i32 1
  %26 = load float, float* %25, align 4
  store float %26, float* %7, align 4
  %27 = load %struct.compressor_data*, %struct.compressor_data** %4, align 8
  %28 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %27, i32 0, i32 2
  %29 = load float, float* %28, align 8
  store float %29, float* %8, align 4
  %30 = load %struct.compressor_data*, %struct.compressor_data** %4, align 8
  %31 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %30, i32 0, i32 3
  %32 = load float*, float** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(float* %32, i32 0, i32 %36)
  store i64 0, i64* %9, align 8
  br label %38

38:                                               ; preds = %107, %23
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.compressor_data*, %struct.compressor_data** %4, align 8
  %41 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %110

44:                                               ; preds = %38
  %45 = load float**, float*** %5, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds float*, float** %45, i64 %46
  %48 = load float*, float** %47, align 8
  %49 = icmp ne float* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %107

51:                                               ; preds = %44
  %52 = load %struct.compressor_data*, %struct.compressor_data** %4, align 8
  %53 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %52, i32 0, i32 3
  %54 = load float*, float** %53, align 8
  store float* %54, float** %10, align 8
  %55 = load %struct.compressor_data*, %struct.compressor_data** %4, align 8
  %56 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %55, i32 0, i32 5
  %57 = load float, float* %56, align 8
  store float %57, float* %11, align 4
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %103, %51
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %106

62:                                               ; preds = %58
  %63 = load float**, float*** %5, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds float*, float** %63, i64 %64
  %66 = load float*, float** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  %70 = load float, float* %69, align 4
  %71 = call float @llvm.fabs.f32(float %70)
  store float %71, float* %13, align 4
  %72 = load float, float* %11, align 4
  %73 = load float, float* %13, align 4
  %74 = fcmp olt float %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %62
  %76 = load float, float* %13, align 4
  %77 = load float, float* %7, align 4
  %78 = load float, float* %11, align 4
  %79 = load float, float* %13, align 4
  %80 = fsub float %78, %79
  %81 = fmul float %77, %80
  %82 = fadd float %76, %81
  store float %82, float* %11, align 4
  br label %91

83:                                               ; preds = %62
  %84 = load float, float* %13, align 4
  %85 = load float, float* %8, align 4
  %86 = load float, float* %11, align 4
  %87 = load float, float* %13, align 4
  %88 = fsub float %86, %87
  %89 = fmul float %85, %88
  %90 = fadd float %84, %89
  store float %90, float* %11, align 4
  br label %91

91:                                               ; preds = %83, %75
  %92 = load float*, float** %10, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %92, i64 %94
  %96 = load float, float* %95, align 4
  %97 = load float, float* %11, align 4
  %98 = call float @llvm.maxnum.f32(float %96, float %97)
  %99 = load float*, float** %10, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %99, i64 %101
  store float %98, float* %102, align 4
  br label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %58

106:                                              ; preds = %58
  br label %107

107:                                              ; preds = %106, %50
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %9, align 8
  br label %38

110:                                              ; preds = %38
  %111 = load %struct.compressor_data*, %struct.compressor_data** %4, align 8
  %112 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %111, i32 0, i32 3
  %113 = load float*, float** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %113, i64 %116
  %118 = load float, float* %117, align 4
  %119 = load %struct.compressor_data*, %struct.compressor_data** %4, align 8
  %120 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %119, i32 0, i32 5
  store float %118, float* %120, align 8
  ret void
}

declare dso_local i32 @resize_env_buffer(%struct.compressor_data*, i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
