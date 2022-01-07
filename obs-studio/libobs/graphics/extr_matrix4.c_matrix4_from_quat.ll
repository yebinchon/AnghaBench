; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_from_quat.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_from_quat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix4 = type { i32, i32, i32, i32 }
%struct.quat = type { float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix4_from_quat(%struct.matrix4* %0, %struct.quat* %1) #0 {
  %3 = alloca %struct.matrix4*, align 8
  %4 = alloca %struct.quat*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store %struct.matrix4* %0, %struct.matrix4** %3, align 8
  store %struct.quat* %1, %struct.quat** %4, align 8
  %16 = load %struct.quat*, %struct.quat** %4, align 8
  %17 = load %struct.quat*, %struct.quat** %4, align 8
  %18 = call float @quat_dot(%struct.quat* %16, %struct.quat* %17)
  store float %18, float* %5, align 4
  %19 = load float, float* %5, align 4
  %20 = fcmp ogt float %19, 0.000000e+00
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load float, float* %5, align 4
  %23 = fdiv float 2.000000e+00, %22
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi float [ %23, %21 ], [ 0.000000e+00, %24 ]
  store float %26, float* %6, align 4
  %27 = load %struct.quat*, %struct.quat** %4, align 8
  %28 = getelementptr inbounds %struct.quat, %struct.quat* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = load %struct.quat*, %struct.quat** %4, align 8
  %31 = getelementptr inbounds %struct.quat, %struct.quat* %30, i32 0, i32 0
  %32 = load float, float* %31, align 4
  %33 = fmul float %29, %32
  %34 = load float, float* %6, align 4
  %35 = fmul float %33, %34
  store float %35, float* %7, align 4
  %36 = load %struct.quat*, %struct.quat** %4, align 8
  %37 = getelementptr inbounds %struct.quat, %struct.quat* %36, i32 0, i32 1
  %38 = load float, float* %37, align 4
  %39 = load %struct.quat*, %struct.quat** %4, align 8
  %40 = getelementptr inbounds %struct.quat, %struct.quat* %39, i32 0, i32 1
  %41 = load float, float* %40, align 4
  %42 = fmul float %38, %41
  %43 = load float, float* %6, align 4
  %44 = fmul float %42, %43
  store float %44, float* %8, align 4
  %45 = load %struct.quat*, %struct.quat** %4, align 8
  %46 = getelementptr inbounds %struct.quat, %struct.quat* %45, i32 0, i32 2
  %47 = load float, float* %46, align 4
  %48 = load %struct.quat*, %struct.quat** %4, align 8
  %49 = getelementptr inbounds %struct.quat, %struct.quat* %48, i32 0, i32 2
  %50 = load float, float* %49, align 4
  %51 = fmul float %47, %50
  %52 = load float, float* %6, align 4
  %53 = fmul float %51, %52
  store float %53, float* %9, align 4
  %54 = load %struct.quat*, %struct.quat** %4, align 8
  %55 = getelementptr inbounds %struct.quat, %struct.quat* %54, i32 0, i32 0
  %56 = load float, float* %55, align 4
  %57 = load %struct.quat*, %struct.quat** %4, align 8
  %58 = getelementptr inbounds %struct.quat, %struct.quat* %57, i32 0, i32 1
  %59 = load float, float* %58, align 4
  %60 = fmul float %56, %59
  %61 = load float, float* %6, align 4
  %62 = fmul float %60, %61
  store float %62, float* %10, align 4
  %63 = load %struct.quat*, %struct.quat** %4, align 8
  %64 = getelementptr inbounds %struct.quat, %struct.quat* %63, i32 0, i32 0
  %65 = load float, float* %64, align 4
  %66 = load %struct.quat*, %struct.quat** %4, align 8
  %67 = getelementptr inbounds %struct.quat, %struct.quat* %66, i32 0, i32 2
  %68 = load float, float* %67, align 4
  %69 = fmul float %65, %68
  %70 = load float, float* %6, align 4
  %71 = fmul float %69, %70
  store float %71, float* %11, align 4
  %72 = load %struct.quat*, %struct.quat** %4, align 8
  %73 = getelementptr inbounds %struct.quat, %struct.quat* %72, i32 0, i32 1
  %74 = load float, float* %73, align 4
  %75 = load %struct.quat*, %struct.quat** %4, align 8
  %76 = getelementptr inbounds %struct.quat, %struct.quat* %75, i32 0, i32 2
  %77 = load float, float* %76, align 4
  %78 = fmul float %74, %77
  %79 = load float, float* %6, align 4
  %80 = fmul float %78, %79
  store float %80, float* %12, align 4
  %81 = load %struct.quat*, %struct.quat** %4, align 8
  %82 = getelementptr inbounds %struct.quat, %struct.quat* %81, i32 0, i32 3
  %83 = load float, float* %82, align 4
  %84 = load %struct.quat*, %struct.quat** %4, align 8
  %85 = getelementptr inbounds %struct.quat, %struct.quat* %84, i32 0, i32 0
  %86 = load float, float* %85, align 4
  %87 = fmul float %83, %86
  %88 = load float, float* %6, align 4
  %89 = fmul float %87, %88
  store float %89, float* %13, align 4
  %90 = load %struct.quat*, %struct.quat** %4, align 8
  %91 = getelementptr inbounds %struct.quat, %struct.quat* %90, i32 0, i32 3
  %92 = load float, float* %91, align 4
  %93 = load %struct.quat*, %struct.quat** %4, align 8
  %94 = getelementptr inbounds %struct.quat, %struct.quat* %93, i32 0, i32 1
  %95 = load float, float* %94, align 4
  %96 = fmul float %92, %95
  %97 = load float, float* %6, align 4
  %98 = fmul float %96, %97
  store float %98, float* %14, align 4
  %99 = load %struct.quat*, %struct.quat** %4, align 8
  %100 = getelementptr inbounds %struct.quat, %struct.quat* %99, i32 0, i32 3
  %101 = load float, float* %100, align 4
  %102 = load %struct.quat*, %struct.quat** %4, align 8
  %103 = getelementptr inbounds %struct.quat, %struct.quat* %102, i32 0, i32 2
  %104 = load float, float* %103, align 4
  %105 = fmul float %101, %104
  %106 = load float, float* %6, align 4
  %107 = fmul float %105, %106
  store float %107, float* %15, align 4
  %108 = load %struct.matrix4*, %struct.matrix4** %3, align 8
  %109 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %108, i32 0, i32 3
  %110 = load float, float* %8, align 4
  %111 = load float, float* %9, align 4
  %112 = fadd float %110, %111
  %113 = fsub float 1.000000e+00, %112
  %114 = load float, float* %10, align 4
  %115 = load float, float* %15, align 4
  %116 = fadd float %114, %115
  %117 = load float, float* %11, align 4
  %118 = load float, float* %14, align 4
  %119 = fsub float %117, %118
  %120 = call i32 @vec4_set(i32* %109, float %113, float %116, float %119, float 0.000000e+00)
  %121 = load %struct.matrix4*, %struct.matrix4** %3, align 8
  %122 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %121, i32 0, i32 2
  %123 = load float, float* %10, align 4
  %124 = load float, float* %15, align 4
  %125 = fsub float %123, %124
  %126 = load float, float* %7, align 4
  %127 = load float, float* %9, align 4
  %128 = fadd float %126, %127
  %129 = fsub float 1.000000e+00, %128
  %130 = load float, float* %12, align 4
  %131 = load float, float* %13, align 4
  %132 = fadd float %130, %131
  %133 = call i32 @vec4_set(i32* %122, float %125, float %129, float %132, float 0.000000e+00)
  %134 = load %struct.matrix4*, %struct.matrix4** %3, align 8
  %135 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %134, i32 0, i32 1
  %136 = load float, float* %11, align 4
  %137 = load float, float* %14, align 4
  %138 = fadd float %136, %137
  %139 = load float, float* %12, align 4
  %140 = load float, float* %13, align 4
  %141 = fsub float %139, %140
  %142 = load float, float* %7, align 4
  %143 = load float, float* %8, align 4
  %144 = fadd float %142, %143
  %145 = fsub float 1.000000e+00, %144
  %146 = call i32 @vec4_set(i32* %135, float %138, float %141, float %145, float 0.000000e+00)
  %147 = load %struct.matrix4*, %struct.matrix4** %3, align 8
  %148 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %147, i32 0, i32 0
  %149 = call i32 @vec4_set(i32* %148, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  ret void
}

declare dso_local float @quat_dot(%struct.quat*, %struct.quat*) #1

declare dso_local i32 @vec4_set(i32*, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
