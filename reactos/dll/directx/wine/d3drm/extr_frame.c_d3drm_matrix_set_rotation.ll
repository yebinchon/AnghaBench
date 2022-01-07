; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_frame.c_d3drm_matrix_set_rotation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_frame.c_d3drm_matrix_set_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_matrix = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { float }
%struct.TYPE_8__ = type { float }
%struct.TYPE_7__ = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3drm_matrix*, %struct.TYPE_10__*, float)* @d3drm_matrix_set_rotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3drm_matrix_set_rotation(%struct.d3drm_matrix* %0, %struct.TYPE_10__* %1, float %2) #0 {
  %4 = alloca %struct.d3drm_matrix*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.d3drm_matrix* %0, %struct.d3drm_matrix** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store float %2, float* %6, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = call i32 @D3DRMVectorNormalize(%struct.TYPE_10__* %10)
  %12 = load float, float* %6, align 4
  %13 = call float @sinf(float %12) #3
  store float %13, float* %7, align 4
  %14 = load float, float* %6, align 4
  %15 = call float @cosf(float %14) #3
  store float %15, float* %8, align 4
  %16 = load float, float* %8, align 4
  %17 = fsub float 1.000000e+00, %16
  store float %17, float* %9, align 4
  %18 = load float, float* %9, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load float, float* %21, align 4
  %23 = fmul float %18, %22
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  %28 = fmul float %23, %27
  %29 = load float, float* %8, align 4
  %30 = fadd float %28, %29
  %31 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %32 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %31, i32 0, i32 0
  store float %30, float* %32, align 4
  %33 = load float, float* %9, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load float, float* %36, align 4
  %38 = fmul float %33, %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load float, float* %41, align 4
  %43 = fmul float %38, %42
  %44 = load float, float* %7, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load float, float* %47, align 4
  %49 = fmul float %44, %48
  %50 = fsub float %43, %49
  %51 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %52 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %51, i32 0, i32 1
  store float %50, float* %52, align 4
  %53 = load float, float* %9, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load float, float* %56, align 4
  %58 = fmul float %53, %57
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load float, float* %61, align 4
  %63 = fmul float %58, %62
  %64 = load float, float* %7, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load float, float* %67, align 4
  %69 = fmul float %64, %68
  %70 = fadd float %63, %69
  %71 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %72 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %71, i32 0, i32 2
  store float %70, float* %72, align 4
  %73 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %74 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %73, i32 0, i32 3
  store float 0.000000e+00, float* %74, align 4
  %75 = load float, float* %9, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load float, float* %78, align 4
  %80 = fmul float %75, %79
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load float, float* %83, align 4
  %85 = fmul float %80, %84
  %86 = load float, float* %7, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load float, float* %89, align 4
  %91 = fmul float %86, %90
  %92 = fadd float %85, %91
  %93 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %94 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %93, i32 0, i32 4
  store float %92, float* %94, align 4
  %95 = load float, float* %9, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load float, float* %98, align 4
  %100 = fmul float %95, %99
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load float, float* %103, align 4
  %105 = fmul float %100, %104
  %106 = load float, float* %8, align 4
  %107 = fadd float %105, %106
  %108 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %109 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %108, i32 0, i32 5
  store float %107, float* %109, align 4
  %110 = load float, float* %9, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load float, float* %113, align 4
  %115 = fmul float %110, %114
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load float, float* %118, align 4
  %120 = fmul float %115, %119
  %121 = load float, float* %7, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load float, float* %124, align 4
  %126 = fmul float %121, %125
  %127 = fsub float %120, %126
  %128 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %129 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %128, i32 0, i32 6
  store float %127, float* %129, align 4
  %130 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %131 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %130, i32 0, i32 7
  store float 0.000000e+00, float* %131, align 4
  %132 = load float, float* %9, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load float, float* %135, align 4
  %137 = fmul float %132, %136
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load float, float* %140, align 4
  %142 = fmul float %137, %141
  %143 = load float, float* %7, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load float, float* %146, align 4
  %148 = fmul float %143, %147
  %149 = fsub float %142, %148
  %150 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %151 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %150, i32 0, i32 8
  store float %149, float* %151, align 4
  %152 = load float, float* %9, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load float, float* %155, align 4
  %157 = fmul float %152, %156
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load float, float* %160, align 4
  %162 = fmul float %157, %161
  %163 = load float, float* %7, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load float, float* %166, align 4
  %168 = fmul float %163, %167
  %169 = fadd float %162, %168
  %170 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %171 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %170, i32 0, i32 9
  store float %169, float* %171, align 4
  %172 = load float, float* %9, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load float, float* %175, align 4
  %177 = fmul float %172, %176
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load float, float* %180, align 4
  %182 = fmul float %177, %181
  %183 = load float, float* %8, align 4
  %184 = fadd float %182, %183
  %185 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %186 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %185, i32 0, i32 10
  store float %184, float* %186, align 4
  %187 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %188 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %187, i32 0, i32 11
  store float 0.000000e+00, float* %188, align 4
  %189 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %190 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %189, i32 0, i32 12
  store float 0.000000e+00, float* %190, align 4
  %191 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %192 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %191, i32 0, i32 13
  store float 0.000000e+00, float* %192, align 4
  %193 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %194 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %193, i32 0, i32 14
  store float 0.000000e+00, float* %194, align 4
  %195 = load %struct.d3drm_matrix*, %struct.d3drm_matrix** %4, align 8
  %196 = getelementptr inbounds %struct.d3drm_matrix, %struct.d3drm_matrix* %195, i32 0, i32 15
  store float 1.000000e+00, float* %196, align 4
  ret void
}

declare dso_local i32 @D3DRMVectorNormalize(%struct.TYPE_10__*) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
