; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_get_rgb2xyz_matrix.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_get_rgb2xyz_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_csp_primaries = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { float, float }
%struct.TYPE_7__ = type { float, float }
%struct.TYPE_6__ = type { float, float }
%struct.TYPE_5__ = type { float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_get_rgb2xyz_matrix(%struct.mp_csp_primaries* byval(%struct.mp_csp_primaries) align 8 %0, [3 x float]* %1) #0 {
  %3 = alloca [3 x float]*, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store [3 x float]* %1, [3 x float]** %3, align 8
  %10 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load float, float* %11, align 8
  %13 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load float, float* %14, align 4
  %16 = fdiv float %12, %15
  %17 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  store float %16, float* %17, align 16
  %18 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load float, float* %19, align 8
  %21 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load float, float* %22, align 4
  %24 = fdiv float %20, %23
  %25 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 1
  store float %24, float* %25, align 4
  %26 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load float, float* %27, align 8
  %29 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load float, float* %30, align 4
  %32 = fdiv float %28, %31
  %33 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 2
  store float %32, float* %33, align 8
  %34 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 8
  %37 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load float, float* %38, align 4
  %40 = fdiv float %36, %39
  %41 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 3
  store float %40, float* %41, align 4
  %42 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 8
  %45 = fsub float 1.000000e+00, %44
  %46 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load float, float* %47, align 4
  %49 = fsub float %45, %48
  %50 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load float, float* %51, align 4
  %53 = fdiv float %49, %52
  %54 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 0
  store float %53, float* %54, align 16
  %55 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load float, float* %56, align 8
  %58 = fsub float 1.000000e+00, %57
  %59 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load float, float* %60, align 4
  %62 = fsub float %58, %61
  %63 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load float, float* %64, align 4
  %66 = fdiv float %62, %65
  %67 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 1
  store float %66, float* %67, align 4
  %68 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load float, float* %69, align 8
  %71 = fsub float 1.000000e+00, %70
  %72 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load float, float* %73, align 4
  %75 = fsub float %71, %74
  %76 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load float, float* %77, align 4
  %79 = fdiv float %75, %78
  %80 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 2
  store float %79, float* %80, align 8
  %81 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load float, float* %82, align 8
  %84 = fsub float 1.000000e+00, %83
  %85 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load float, float* %86, align 4
  %88 = fsub float %84, %87
  %89 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %0, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load float, float* %90, align 4
  %92 = fdiv float %88, %91
  %93 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 3
  store float %92, float* %93, align 4
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %121, %2
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %97, label %124

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 %99
  %101 = load float, float* %100, align 4
  %102 = load [3 x float]*, [3 x float]** %3, align 8
  %103 = getelementptr inbounds [3 x float], [3 x float]* %102, i64 0
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [3 x float], [3 x float]* %103, i64 0, i64 %105
  store float %101, float* %106, align 4
  %107 = load [3 x float]*, [3 x float]** %3, align 8
  %108 = getelementptr inbounds [3 x float], [3 x float]* %107, i64 1
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [3 x float], [3 x float]* %108, i64 0, i64 %110
  store float 1.000000e+00, float* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 %113
  %115 = load float, float* %114, align 4
  %116 = load [3 x float]*, [3 x float]** %3, align 8
  %117 = getelementptr inbounds [3 x float], [3 x float]* %116, i64 2
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [3 x float], [3 x float]* %117, i64 0, i64 %119
  store float %115, float* %120, align 4
  br label %121

121:                                              ; preds = %97
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %94

124:                                              ; preds = %94
  %125 = load [3 x float]*, [3 x float]** %3, align 8
  %126 = bitcast [3 x float]* %125 to float**
  %127 = call i32 @mp_invert_matrix3x3(float** %126)
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %162, %124
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 3
  br i1 %130, label %131, label %165

131:                                              ; preds = %128
  %132 = load [3 x float]*, [3 x float]** %3, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [3 x float], [3 x float]* %132, i64 %134
  %136 = getelementptr inbounds [3 x float], [3 x float]* %135, i64 0, i64 0
  %137 = load float, float* %136, align 4
  %138 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 3
  %139 = load float, float* %138, align 4
  %140 = fmul float %137, %139
  %141 = load [3 x float]*, [3 x float]** %3, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [3 x float], [3 x float]* %141, i64 %143
  %145 = getelementptr inbounds [3 x float], [3 x float]* %144, i64 0, i64 1
  %146 = load float, float* %145, align 4
  %147 = fmul float %146, 1.000000e+00
  %148 = fadd float %140, %147
  %149 = load [3 x float]*, [3 x float]** %3, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [3 x float], [3 x float]* %149, i64 %151
  %153 = getelementptr inbounds [3 x float], [3 x float]* %152, i64 0, i64 2
  %154 = load float, float* %153, align 4
  %155 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 3
  %156 = load float, float* %155, align 4
  %157 = fmul float %154, %156
  %158 = fadd float %148, %157
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 %160
  store float %158, float* %161, align 4
  br label %162

162:                                              ; preds = %131
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %128

165:                                              ; preds = %128
  store i32 0, i32* %9, align 4
  br label %166

166:                                              ; preds = %208, %165
  %167 = load i32, i32* %9, align 4
  %168 = icmp slt i32 %167, 3
  br i1 %168, label %169, label %211

169:                                              ; preds = %166
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 %171
  %173 = load float, float* %172, align 4
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 %175
  %177 = load float, float* %176, align 4
  %178 = fmul float %173, %177
  %179 = load [3 x float]*, [3 x float]** %3, align 8
  %180 = getelementptr inbounds [3 x float], [3 x float]* %179, i64 0
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [3 x float], [3 x float]* %180, i64 0, i64 %182
  store float %178, float* %183, align 4
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 %185
  %187 = load float, float* %186, align 4
  %188 = fmul float %187, 1.000000e+00
  %189 = load [3 x float]*, [3 x float]** %3, align 8
  %190 = getelementptr inbounds [3 x float], [3 x float]* %189, i64 1
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [3 x float], [3 x float]* %190, i64 0, i64 %192
  store float %188, float* %193, align 4
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 %195
  %197 = load float, float* %196, align 4
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 %199
  %201 = load float, float* %200, align 4
  %202 = fmul float %197, %201
  %203 = load [3 x float]*, [3 x float]** %3, align 8
  %204 = getelementptr inbounds [3 x float], [3 x float]* %203, i64 2
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [3 x float], [3 x float]* %204, i64 0, i64 %206
  store float %202, float* %207, align 4
  br label %208

208:                                              ; preds = %169
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %166

211:                                              ; preds = %166
  ret void
}

declare dso_local i32 @mp_invert_matrix3x3(float**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
