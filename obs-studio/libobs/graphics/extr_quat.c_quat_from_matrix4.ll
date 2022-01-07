; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_from_matrix4.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_from_matrix4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quat = type { float, float, float, float, float* }
%struct.matrix4 = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { float, float, float }
%struct.TYPE_5__ = type { float, float, float }
%struct.TYPE_4__ = type { float, float, float }
%struct.f4x4 = type { float** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quat_from_matrix4(%struct.quat* %0, %struct.matrix4* %1) #0 {
  %3 = alloca %struct.quat*, align 8
  %4 = alloca %struct.matrix4*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.f4x4*, align 8
  store %struct.quat* %0, %struct.quat** %3, align 8
  store %struct.matrix4* %1, %struct.matrix4** %4, align 8
  %12 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %13 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load float, float* %14, align 4
  %16 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %17 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load float, float* %18, align 4
  %20 = fadd float %15, %19
  %21 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %22 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load float, float* %23, align 4
  %25 = fadd float %20, %24
  store float %25, float* %5, align 4
  %26 = load float, float* %5, align 4
  %27 = fcmp ogt float %26, 0.000000e+00
  br i1 %27, label %28, label %77

28:                                               ; preds = %2
  %29 = load float, float* %5, align 4
  %30 = fadd float %29, 1.000000e+00
  %31 = call float @sqrtf(float %30) #2
  store float %31, float* %7, align 4
  %32 = load float, float* %7, align 4
  %33 = fmul float %32, 5.000000e-01
  %34 = load %struct.quat*, %struct.quat** %3, align 8
  %35 = getelementptr inbounds %struct.quat, %struct.quat* %34, i32 0, i32 0
  store float %33, float* %35, align 8
  %36 = load float, float* %7, align 4
  %37 = fdiv float 5.000000e-01, %36
  store float %37, float* %6, align 4
  %38 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %39 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load float, float* %40, align 4
  %42 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %43 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load float, float* %44, align 4
  %46 = fsub float %41, %45
  %47 = load float, float* %6, align 4
  %48 = fmul float %46, %47
  %49 = load %struct.quat*, %struct.quat** %3, align 8
  %50 = getelementptr inbounds %struct.quat, %struct.quat* %49, i32 0, i32 1
  store float %48, float* %50, align 4
  %51 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %52 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load float, float* %53, align 4
  %55 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %56 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load float, float* %57, align 4
  %59 = fsub float %54, %58
  %60 = load float, float* %6, align 4
  %61 = fmul float %59, %60
  %62 = load %struct.quat*, %struct.quat** %3, align 8
  %63 = getelementptr inbounds %struct.quat, %struct.quat* %62, i32 0, i32 2
  store float %61, float* %63, align 8
  %64 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %65 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load float, float* %66, align 4
  %68 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %69 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load float, float* %70, align 4
  %72 = fsub float %67, %71
  %73 = load float, float* %6, align 4
  %74 = fmul float %72, %73
  %75 = load %struct.quat*, %struct.quat** %3, align 8
  %76 = getelementptr inbounds %struct.quat, %struct.quat* %75, i32 0, i32 3
  store float %74, float* %76, align 4
  br label %251

77:                                               ; preds = %2
  %78 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %79 = bitcast %struct.matrix4* %78 to %struct.f4x4*
  store %struct.f4x4* %79, %struct.f4x4** %11, align 8
  %80 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %81 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load float, float* %82, align 4
  %84 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %85 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load float, float* %86, align 4
  %88 = fcmp ogt float %83, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 0, i32 1
  store i32 %90, i32* %8, align 4
  %91 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %92 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load float, float* %93, align 4
  %95 = load %struct.f4x4*, %struct.f4x4** %11, align 8
  %96 = getelementptr inbounds %struct.f4x4, %struct.f4x4* %95, i32 0, i32 0
  %97 = load float**, float*** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float*, float** %97, i64 %99
  %101 = load float*, float** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %101, i64 %103
  %105 = load float, float* %104, align 4
  %106 = fcmp ogt float %94, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %77
  store i32 2, i32* %8, align 4
  br label %108

108:                                              ; preds = %107, %77
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  %111 = srem i32 %110, 3
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 2
  %114 = srem i32 %113, 3
  store i32 %114, i32* %10, align 4
  %115 = load %struct.f4x4*, %struct.f4x4** %11, align 8
  %116 = getelementptr inbounds %struct.f4x4, %struct.f4x4* %115, i32 0, i32 0
  %117 = load float**, float*** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float*, float** %117, i64 %119
  %121 = load float*, float** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %121, i64 %123
  %125 = load float, float* %124, align 4
  %126 = load %struct.f4x4*, %struct.f4x4** %11, align 8
  %127 = getelementptr inbounds %struct.f4x4, %struct.f4x4* %126, i32 0, i32 0
  %128 = load float**, float*** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float*, float** %128, i64 %130
  %132 = load float*, float** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %132, i64 %134
  %136 = load float, float* %135, align 4
  %137 = fsub float %125, %136
  %138 = load %struct.f4x4*, %struct.f4x4** %11, align 8
  %139 = getelementptr inbounds %struct.f4x4, %struct.f4x4* %138, i32 0, i32 0
  %140 = load float**, float*** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float*, float** %140, i64 %142
  %144 = load float*, float** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %144, i64 %146
  %148 = load float, float* %147, align 4
  %149 = fsub float %137, %148
  %150 = fadd float %149, 1.000000e+00
  %151 = call float @sqrtf(float %150) #2
  store float %151, float* %7, align 4
  %152 = load float, float* %7, align 4
  %153 = fmul float %152, 5.000000e-01
  %154 = load %struct.quat*, %struct.quat** %3, align 8
  %155 = getelementptr inbounds %struct.quat, %struct.quat* %154, i32 0, i32 4
  %156 = load float*, float** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %156, i64 %158
  store float %153, float* %159, align 4
  %160 = load float, float* %7, align 4
  %161 = fdiv float 5.000000e-01, %160
  store float %161, float* %6, align 4
  %162 = load %struct.f4x4*, %struct.f4x4** %11, align 8
  %163 = getelementptr inbounds %struct.f4x4, %struct.f4x4* %162, i32 0, i32 0
  %164 = load float**, float*** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float*, float** %164, i64 %166
  %168 = load float*, float** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %168, i64 %170
  %172 = load float, float* %171, align 4
  %173 = load %struct.f4x4*, %struct.f4x4** %11, align 8
  %174 = getelementptr inbounds %struct.f4x4, %struct.f4x4* %173, i32 0, i32 0
  %175 = load float**, float*** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float*, float** %175, i64 %177
  %179 = load float*, float** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, float* %179, i64 %181
  %183 = load float, float* %182, align 4
  %184 = fadd float %172, %183
  %185 = load float, float* %6, align 4
  %186 = fmul float %184, %185
  %187 = load %struct.quat*, %struct.quat** %3, align 8
  %188 = getelementptr inbounds %struct.quat, %struct.quat* %187, i32 0, i32 4
  %189 = load float*, float** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %189, i64 %191
  store float %186, float* %192, align 4
  %193 = load %struct.f4x4*, %struct.f4x4** %11, align 8
  %194 = getelementptr inbounds %struct.f4x4, %struct.f4x4* %193, i32 0, i32 0
  %195 = load float**, float*** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float*, float** %195, i64 %197
  %199 = load float*, float** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %199, i64 %201
  %203 = load float, float* %202, align 4
  %204 = load %struct.f4x4*, %struct.f4x4** %11, align 8
  %205 = getelementptr inbounds %struct.f4x4, %struct.f4x4* %204, i32 0, i32 0
  %206 = load float**, float*** %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float*, float** %206, i64 %208
  %210 = load float*, float** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %210, i64 %212
  %214 = load float, float* %213, align 4
  %215 = fadd float %203, %214
  %216 = load float, float* %6, align 4
  %217 = fmul float %215, %216
  %218 = load %struct.quat*, %struct.quat** %3, align 8
  %219 = getelementptr inbounds %struct.quat, %struct.quat* %218, i32 0, i32 4
  %220 = load float*, float** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %220, i64 %222
  store float %217, float* %223, align 4
  %224 = load %struct.f4x4*, %struct.f4x4** %11, align 8
  %225 = getelementptr inbounds %struct.f4x4, %struct.f4x4* %224, i32 0, i32 0
  %226 = load float**, float*** %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float*, float** %226, i64 %228
  %230 = load float*, float** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %230, i64 %232
  %234 = load float, float* %233, align 4
  %235 = load %struct.f4x4*, %struct.f4x4** %11, align 8
  %236 = getelementptr inbounds %struct.f4x4, %struct.f4x4* %235, i32 0, i32 0
  %237 = load float**, float*** %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float*, float** %237, i64 %239
  %241 = load float*, float** %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %241, i64 %243
  %245 = load float, float* %244, align 4
  %246 = fsub float %234, %245
  %247 = load float, float* %6, align 4
  %248 = fmul float %246, %247
  %249 = load %struct.quat*, %struct.quat** %3, align 8
  %250 = getelementptr inbounds %struct.quat, %struct.quat* %249, i32 0, i32 0
  store float %248, float* %250, align 8
  br label %251

251:                                              ; preds = %108, %28
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
