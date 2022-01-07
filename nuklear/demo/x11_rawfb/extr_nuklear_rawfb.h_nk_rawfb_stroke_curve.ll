; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_curve.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { i32 }
%struct.nk_vec2i = type { float, float }
%struct.nk_color = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i16, i32)* @nk_rawfb_stroke_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_stroke_curve(%struct.rawfb_context* %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, i32 %5, i16 zeroext %6, i32 %7) #0 {
  %9 = alloca %struct.nk_vec2i, align 4
  %10 = alloca %struct.nk_vec2i, align 4
  %11 = alloca %struct.nk_vec2i, align 4
  %12 = alloca %struct.nk_vec2i, align 4
  %13 = alloca %struct.nk_color, align 4
  %14 = alloca %struct.rawfb_context*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca %struct.nk_vec2i, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = bitcast %struct.nk_vec2i* %9 to <2 x float>*
  store <2 x float> %1, <2 x float>* %29, align 4
  %30 = bitcast %struct.nk_vec2i* %10 to <2 x float>*
  store <2 x float> %2, <2 x float>* %30, align 4
  %31 = bitcast %struct.nk_vec2i* %11 to <2 x float>*
  store <2 x float> %3, <2 x float>* %31, align 4
  %32 = bitcast %struct.nk_vec2i* %12 to <2 x float>*
  store <2 x float> %4, <2 x float>* %32, align 4
  %33 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %13, i32 0, i32 0
  store i32 %7, i32* %33, align 4
  store %struct.rawfb_context* %0, %struct.rawfb_context** %14, align 8
  store i32 %5, i32* %15, align 4
  store i16 %6, i16* %16, align 2
  %34 = bitcast %struct.nk_vec2i* %20 to i8*
  %35 = bitcast %struct.nk_vec2i* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @MAX(i32 %36, i32 1)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = uitofp i32 %38 to float
  %40 = fdiv float 1.000000e+00, %39
  store float %40, float* %19, align 4
  store i32 1, i32* %17, align 4
  br label %41

41:                                               ; preds = %133, %8
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %136

45:                                               ; preds = %41
  %46 = load float, float* %19, align 4
  %47 = load i32, i32* %17, align 4
  %48 = uitofp i32 %47 to float
  %49 = fmul float %46, %48
  store float %49, float* %21, align 4
  %50 = load float, float* %21, align 4
  %51 = fsub float 1.000000e+00, %50
  store float %51, float* %22, align 4
  %52 = load float, float* %22, align 4
  %53 = load float, float* %22, align 4
  %54 = fmul float %52, %53
  %55 = load float, float* %22, align 4
  %56 = fmul float %54, %55
  store float %56, float* %23, align 4
  %57 = load float, float* %22, align 4
  %58 = fmul float 3.000000e+00, %57
  %59 = load float, float* %22, align 4
  %60 = fmul float %58, %59
  %61 = load float, float* %21, align 4
  %62 = fmul float %60, %61
  store float %62, float* %24, align 4
  %63 = load float, float* %22, align 4
  %64 = fmul float 3.000000e+00, %63
  %65 = load float, float* %21, align 4
  %66 = fmul float %64, %65
  %67 = load float, float* %21, align 4
  %68 = fmul float %66, %67
  store float %68, float* %25, align 4
  %69 = load float, float* %21, align 4
  %70 = load float, float* %21, align 4
  %71 = fmul float %69, %70
  %72 = load float, float* %21, align 4
  %73 = fmul float %71, %72
  store float %73, float* %26, align 4
  %74 = load float, float* %23, align 4
  %75 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %9, i32 0, i32 0
  %76 = load float, float* %75, align 4
  %77 = fmul float %74, %76
  %78 = load float, float* %24, align 4
  %79 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %10, i32 0, i32 0
  %80 = load float, float* %79, align 4
  %81 = fmul float %78, %80
  %82 = fadd float %77, %81
  %83 = load float, float* %25, align 4
  %84 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %11, i32 0, i32 0
  %85 = load float, float* %84, align 4
  %86 = fmul float %83, %85
  %87 = fadd float %82, %86
  %88 = load float, float* %26, align 4
  %89 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %12, i32 0, i32 0
  %90 = load float, float* %89, align 4
  %91 = fmul float %88, %90
  %92 = fadd float %87, %91
  store float %92, float* %27, align 4
  %93 = load float, float* %23, align 4
  %94 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %9, i32 0, i32 1
  %95 = load float, float* %94, align 4
  %96 = fmul float %93, %95
  %97 = load float, float* %24, align 4
  %98 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %10, i32 0, i32 1
  %99 = load float, float* %98, align 4
  %100 = fmul float %97, %99
  %101 = fadd float %96, %100
  %102 = load float, float* %25, align 4
  %103 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %11, i32 0, i32 1
  %104 = load float, float* %103, align 4
  %105 = fmul float %102, %104
  %106 = fadd float %101, %105
  %107 = load float, float* %26, align 4
  %108 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %12, i32 0, i32 1
  %109 = load float, float* %108, align 4
  %110 = fmul float %107, %109
  %111 = fadd float %106, %110
  store float %111, float* %28, align 4
  %112 = load %struct.rawfb_context*, %struct.rawfb_context** %14, align 8
  %113 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %20, i32 0, i32 0
  %114 = load float, float* %113, align 4
  %115 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %20, i32 0, i32 1
  %116 = load float, float* %115, align 4
  %117 = load float, float* %27, align 4
  %118 = fptosi float %117 to i16
  %119 = load float, float* %28, align 4
  %120 = fptosi float %119 to i16
  %121 = load i16, i16* %16, align 2
  %122 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %13, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %112, float %114, float %116, i16 signext %118, i16 signext %120, i16 zeroext %121, i32 %123)
  %125 = load float, float* %27, align 4
  %126 = fptosi float %125 to i16
  %127 = sitofp i16 %126 to float
  %128 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %20, i32 0, i32 0
  store float %127, float* %128, align 4
  %129 = load float, float* %28, align 4
  %130 = fptosi float %129 to i16
  %131 = sitofp i16 %130 to float
  %132 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %20, i32 0, i32 1
  store float %131, float* %132, align 4
  br label %133

133:                                              ; preds = %45
  %134 = load i32, i32* %17, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %17, align 4
  br label %41

136:                                              ; preds = %41
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @MAX(i32, i32) #2

declare dso_local i32 @nk_rawfb_stroke_line(%struct.rawfb_context*, float, float, i16 signext, i16 signext, i16 zeroext, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
