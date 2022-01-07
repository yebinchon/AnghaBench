; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_format_to_vec4.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_format_to_vec4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixel_format_desc = type { i32*, i32*, i64 }
%struct.vec4 = type { i32 }

@format_to_vec4.component_offsets = internal constant [4 x i32] [i32 3, i32 0, i32 1, i32 2], align 16
@FORMAT_ARGBF16 = common dso_local global i64 0, align 8
@FORMAT_ARGBF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pixel_format_desc*, i32*, %struct.vec4*)* @format_to_vec4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_to_vec4(%struct.pixel_format_desc* %0, i32* %1, %struct.vec4* %2) #0 {
  %4 = alloca %struct.pixel_format_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vec4*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  store %struct.pixel_format_desc* %0, %struct.pixel_format_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.vec4* %2, %struct.vec4** %6, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %114, %3
  %12 = load i32, i32* %9, align 4
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %117

14:                                               ; preds = %11
  %15 = load %struct.vec4*, %struct.vec4** %6, align 8
  %16 = bitcast %struct.vec4* %15 to float*
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @format_to_vec4.component_offsets, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %16, i64 %21
  store float* %22, float** %10, align 8
  %23 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %24 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %111

31:                                               ; preds = %14
  %32 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %33 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 32, %38
  %40 = lshr i32 -1, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %43 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %41, i64 %50
  %52 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %53 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = srem i32 %58, 8
  %60 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %61 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %59, %66
  %68 = add nsw i32 %67, 7
  %69 = sdiv i32 %68, 8
  %70 = call i32 @min(i32 4, i32 %69)
  %71 = call i32 @memcpy(i32* %8, i32* %51, i32 %70)
  %72 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %73 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @FORMAT_ARGBF16, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %31
  %78 = load i32, i32* %8, align 4
  %79 = call float @float_16_to_32(i32 %78)
  %80 = load float*, float** %10, align 8
  store float %79, float* %80, align 4
  br label %110

81:                                               ; preds = %31
  %82 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %83 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @FORMAT_ARGBF, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = bitcast i32* %8 to float*
  %89 = load float, float* %88, align 4
  %90 = load float*, float** %10, align 8
  store float %89, float* %90, align 4
  br label %109

91:                                               ; preds = %81
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %4, align 8
  %94 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = srem i32 %99, 8
  %101 = ashr i32 %92, %100
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %101, %102
  %104 = sitofp i32 %103 to float
  %105 = load i32, i32* %7, align 4
  %106 = sitofp i32 %105 to float
  %107 = fdiv float %104, %106
  %108 = load float*, float** %10, align 8
  store float %107, float* %108, align 4
  br label %109

109:                                              ; preds = %91, %87
  br label %110

110:                                              ; preds = %109, %77
  br label %113

111:                                              ; preds = %14
  %112 = load float*, float** %10, align 8
  store float 1.000000e+00, float* %112, align 4
  br label %113

113:                                              ; preds = %111, %110
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %11

117:                                              ; preds = %11
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local float @float_16_to_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
