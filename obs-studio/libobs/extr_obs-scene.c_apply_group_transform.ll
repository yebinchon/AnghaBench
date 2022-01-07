; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_apply_group_transform.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_apply_group_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { float, float }
%struct.matrix4 = type { %struct.vec4, %struct.vec4, %struct.vec4, %struct.vec4 }
%struct.vec4 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*)* @apply_group_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_group_transform(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.matrix4, align 4
  %6 = alloca %struct.matrix4, align 4
  %7 = alloca %struct.vec4, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = call i32 @vec4_set(%struct.vec4* %7, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %11 = call i32 @matrix4_inv(%struct.matrix4* %5, i32* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = call i32 @transform_val(i32* %13, %struct.matrix4* %5)
  %15 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %5, i32 0, i32 2
  %16 = call i32 @vec4_set(%struct.vec4* %15, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %17 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %6, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 8
  %22 = call i32 @vec4_set(%struct.vec4* %17, float %21, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %23 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %6, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load float, float* %26, align 4
  %28 = call i32 @vec4_set(%struct.vec4* %23, float 0.000000e+00, float %27, float 0.000000e+00, float 0.000000e+00)
  %29 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %6, i32 0, i32 3
  %30 = call i32 @vec4_set(%struct.vec4* %29, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %31 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %6, i32 0, i32 2
  %32 = call i32 @vec4_set(%struct.vec4* %31, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %33 = call i32 @matrix4_mul(%struct.matrix4* %6, %struct.matrix4* %6, %struct.matrix4* %5)
  %34 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %6, i32 0, i32 1
  %35 = call float @vec4_len(%struct.vec4* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load float, float* %38, align 8
  %40 = fcmp ogt float %39, 0.000000e+00
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, float 1.000000e+00, float -1.000000e+00
  %43 = fmul float %35, %42
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store float %43, float* %46, align 8
  %47 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %6, i32 0, i32 0
  %48 = call float @vec4_len(%struct.vec4* %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load float, float* %51, align 4
  %53 = fcmp ogt float %52, 0.000000e+00
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, float 1.000000e+00, float -1.000000e+00
  %56 = fmul float %48, %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store float %56, float* %59, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, %62
  store i64 %66, i64* %64, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = call i32 @update_item_transform(%struct.TYPE_7__* %67, i32 0)
  ret void
}

declare dso_local i32 @vec4_set(%struct.vec4*, float, float, float, float) #1

declare dso_local i32 @matrix4_inv(%struct.matrix4*, i32*) #1

declare dso_local i32 @transform_val(i32*, %struct.matrix4*) #1

declare dso_local i32 @matrix4_mul(%struct.matrix4*, %struct.matrix4*, %struct.matrix4*) #1

declare dso_local float @vec4_len(%struct.vec4*) #1

declare dso_local i32 @update_item_transform(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
