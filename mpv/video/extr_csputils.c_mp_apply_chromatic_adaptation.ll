; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_apply_chromatic_adaptation.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_apply_chromatic_adaptation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_csp_col_xy = type { i64, i64 }

@__const.mp_apply_chromatic_adaptation.bradford = private unnamed_addr constant [3 x [3 x float]] [[3 x float] [float 0x3FECA4A8C0000000, float 0x3FD10CB2A0000000, float 0xBFC4A8C160000000], [3 x float] [float 0xBFE801A360000000, float 0x3FFB6A7F00000000, float 0x3FA2CA57A0000000], [3 x float] [float 0x3FA3EAB360000000, float 0xBFB1893740000000, float 0x3FF0793DE0000000]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, [3 x float]*)* @mp_apply_chromatic_adaptation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_apply_chromatic_adaptation(i64 %0, i64 %1, i64 %2, i64 %3, [3 x float]* %4) #0 {
  %6 = alloca %struct.mp_csp_col_xy, align 8
  %7 = alloca %struct.mp_csp_col_xy, align 8
  %8 = alloca [3 x float]*, align 8
  %9 = alloca [3 x [2 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = bitcast %struct.mp_csp_col_xy* %6 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %1, i64* %16, align 8
  %17 = bitcast %struct.mp_csp_col_xy* %7 to { i64, i64 }*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  store i64 %2, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  store i64 %3, i64* %19, align 8
  store [3 x float]* %4, [3 x float]** %8, align 8
  %20 = getelementptr inbounds %struct.mp_csp_col_xy, %struct.mp_csp_col_xy* %6, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.mp_csp_col_xy, %struct.mp_csp_col_xy* %7, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %21, %23
  %25 = call i32 @fabs(i64 %24)
  %26 = sitofp i32 %25 to double
  %27 = fcmp olt double %26, 0x3EB0C6F7A0B5ED8D
  br i1 %27, label %28, label %38

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.mp_csp_col_xy, %struct.mp_csp_col_xy* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.mp_csp_col_xy, %struct.mp_csp_col_xy* %7, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %30, %32
  %34 = call i32 @fabs(i64 %33)
  %35 = sitofp i32 %34 to double
  %36 = fcmp olt double %35, 0x3EB0C6F7A0B5ED8D
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %164

38:                                               ; preds = %28, %5
  %39 = bitcast [3 x [3 x float]]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %39, i8 0, i64 36, i1 false)
  %40 = bitcast [3 x [3 x float]]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %40, i8* align 16 bitcast ([3 x [3 x float]]* @__const.mp_apply_chromatic_adaptation.bradford to i8*), i64 36, i1 false)
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %117, %38
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %120

44:                                               ; preds = %41
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 %46
  %48 = getelementptr inbounds [3 x float], [3 x float]* %47, i64 0, i64 0
  %49 = load float, float* %48, align 4
  %50 = bitcast %struct.mp_csp_col_xy* %6 to { i64, i64 }*
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call float @mp_xy_X(i64 %52, i64 %54)
  %56 = fmul float %49, %55
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 %58
  %60 = getelementptr inbounds [3 x float], [3 x float]* %59, i64 0, i64 1
  %61 = load float, float* %60, align 4
  %62 = fmul float %61, 1.000000e+00
  %63 = fadd float %56, %62
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 %65
  %67 = getelementptr inbounds [3 x float], [3 x float]* %66, i64 0, i64 2
  %68 = load float, float* %67, align 4
  %69 = bitcast %struct.mp_csp_col_xy* %6 to { i64, i64 }*
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %69, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call float @mp_xy_Z(i64 %71, i64 %73)
  %75 = fmul float %68, %74
  %76 = fadd float %63, %75
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x [2 x float]], [3 x [2 x float]]* %9, i64 0, i64 %78
  %80 = getelementptr inbounds [2 x float], [2 x float]* %79, i64 0, i64 0
  store float %76, float* %80, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 %82
  %84 = getelementptr inbounds [3 x float], [3 x float]* %83, i64 0, i64 0
  %85 = load float, float* %84, align 4
  %86 = bitcast %struct.mp_csp_col_xy* %7 to { i64, i64 }*
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call float @mp_xy_X(i64 %88, i64 %90)
  %92 = fmul float %85, %91
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 %94
  %96 = getelementptr inbounds [3 x float], [3 x float]* %95, i64 0, i64 1
  %97 = load float, float* %96, align 4
  %98 = fmul float %97, 1.000000e+00
  %99 = fadd float %92, %98
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 %101
  %103 = getelementptr inbounds [3 x float], [3 x float]* %102, i64 0, i64 2
  %104 = load float, float* %103, align 4
  %105 = bitcast %struct.mp_csp_col_xy* %7 to { i64, i64 }*
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %105, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call float @mp_xy_Z(i64 %107, i64 %109)
  %111 = fmul float %104, %110
  %112 = fadd float %99, %111
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [3 x [2 x float]], [3 x [2 x float]]* %9, i64 0, i64 %114
  %116 = getelementptr inbounds [2 x float], [2 x float]* %115, i64 0, i64 1
  store float %112, float* %116, align 4
  br label %117

117:                                              ; preds = %44
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %41

120:                                              ; preds = %41
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %142, %120
  %122 = load i32, i32* %13, align 4
  %123 = icmp slt i32 %122, 3
  br i1 %123, label %124, label %145

124:                                              ; preds = %121
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [3 x [2 x float]], [3 x [2 x float]]* %9, i64 0, i64 %126
  %128 = getelementptr inbounds [2 x float], [2 x float]* %127, i64 0, i64 1
  %129 = load float, float* %128, align 4
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [3 x [2 x float]], [3 x [2 x float]]* %9, i64 0, i64 %131
  %133 = getelementptr inbounds [2 x float], [2 x float]* %132, i64 0, i64 0
  %134 = load float, float* %133, align 8
  %135 = fdiv float %129, %134
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %10, i64 0, i64 %137
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x float], [3 x float]* %138, i64 0, i64 %140
  store float %135, float* %141, align 4
  br label %142

142:                                              ; preds = %124
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  br label %121

145:                                              ; preds = %121
  %146 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %10, i64 0, i64 0
  %147 = bitcast [3 x float]* %146 to float**
  %148 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 0
  %149 = bitcast [3 x float]* %148 to float**
  %150 = call i32 @mp_mul_matrix3x3(float** %147, float** %149)
  %151 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 0
  %152 = bitcast [3 x float]* %151 to float**
  %153 = call i32 @mp_invert_matrix3x3(float** %152)
  %154 = load [3 x float]*, [3 x float]** %8, align 8
  %155 = bitcast [3 x float]* %154 to float**
  %156 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %11, i64 0, i64 0
  %157 = bitcast [3 x float]* %156 to float**
  %158 = call i32 @mp_mul_matrix3x3(float** %155, float** %157)
  %159 = load [3 x float]*, [3 x float]** %8, align 8
  %160 = bitcast [3 x float]* %159 to float**
  %161 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %10, i64 0, i64 0
  %162 = bitcast [3 x float]* %161 to float**
  %163 = call i32 @mp_mul_matrix3x3(float** %160, float** %162)
  br label %164

164:                                              ; preds = %145, %37
  ret void
}

declare dso_local i32 @fabs(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @mp_xy_X(i64, i64) #1

declare dso_local float @mp_xy_Z(i64, i64) #1

declare dso_local i32 @mp_mul_matrix3x3(float**, float**) #1

declare dso_local i32 @mp_invert_matrix3x3(float**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
