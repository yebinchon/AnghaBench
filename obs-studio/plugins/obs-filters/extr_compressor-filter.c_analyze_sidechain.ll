; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_analyze_sidechain.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_analyze_sidechain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor_data = type { i32, float, float, float**, float*, i64, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.compressor_data*, i32)* @analyze_sidechain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_sidechain(%struct.compressor_data* %0, i32 %1) #0 {
  %3 = alloca %struct.compressor_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float**, align 8
  %8 = alloca i64, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  store %struct.compressor_data* %0, %struct.compressor_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %14 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @resize_env_buffer(%struct.compressor_data* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @get_sidechain_data(%struct.compressor_data* %23, i32 %24)
  %26 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %27 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %26, i32 0, i32 1
  %28 = load float, float* %27, align 4
  store float %28, float* %5, align 4
  %29 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %30 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %29, i32 0, i32 2
  %31 = load float, float* %30, align 8
  store float %31, float* %6, align 4
  %32 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %33 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %32, i32 0, i32 3
  %34 = load float**, float*** %33, align 8
  store float** %34, float*** %7, align 8
  %35 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %36 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %35, i32 0, i32 4
  %37 = load float*, float** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(float* %37, i32 0, i32 %41)
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %112, %22
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %46 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %115

49:                                               ; preds = %43
  %50 = load float**, float*** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds float*, float** %50, i64 %51
  %53 = load float*, float** %52, align 8
  %54 = icmp ne float* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %112

56:                                               ; preds = %49
  %57 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %58 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %57, i32 0, i32 4
  %59 = load float*, float** %58, align 8
  store float* %59, float** %9, align 8
  %60 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %61 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %60, i32 0, i32 6
  %62 = load float, float* %61, align 8
  store float %62, float* %10, align 4
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %108, %56
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %63
  %68 = load float**, float*** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds float*, float** %68, i64 %69
  %71 = load float*, float** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  %75 = load float, float* %74, align 4
  %76 = call float @llvm.fabs.f32(float %75)
  store float %76, float* %12, align 4
  %77 = load float, float* %10, align 4
  %78 = load float, float* %12, align 4
  %79 = fcmp olt float %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %67
  %81 = load float, float* %12, align 4
  %82 = load float, float* %5, align 4
  %83 = load float, float* %10, align 4
  %84 = load float, float* %12, align 4
  %85 = fsub float %83, %84
  %86 = fmul float %82, %85
  %87 = fadd float %81, %86
  store float %87, float* %10, align 4
  br label %96

88:                                               ; preds = %67
  %89 = load float, float* %12, align 4
  %90 = load float, float* %6, align 4
  %91 = load float, float* %10, align 4
  %92 = load float, float* %12, align 4
  %93 = fsub float %91, %92
  %94 = fmul float %90, %93
  %95 = fadd float %89, %94
  store float %95, float* %10, align 4
  br label %96

96:                                               ; preds = %88, %80
  %97 = load float*, float** %9, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  %101 = load float, float* %100, align 4
  %102 = load float, float* %10, align 4
  %103 = call float @llvm.maxnum.f32(float %101, float %102)
  %104 = load float*, float** %9, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  store float %103, float* %107, align 4
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %63

111:                                              ; preds = %63
  br label %112

112:                                              ; preds = %111, %55
  %113 = load i64, i64* %8, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %8, align 8
  br label %43

115:                                              ; preds = %43
  %116 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %117 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %116, i32 0, i32 4
  %118 = load float*, float** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %118, i64 %121
  %123 = load float, float* %122, align 4
  %124 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %125 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %124, i32 0, i32 6
  store float %123, float* %125, align 8
  ret void
}

declare dso_local i32 @resize_env_buffer(%struct.compressor_data*, i32) #1

declare dso_local i32 @get_sidechain_data(%struct.compressor_data*, i32) #1

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
