; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec3.h_vec3_cross.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec3.h_vec3_cross.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vec3*, %struct.vec3*, %struct.vec3*)* @vec3_cross to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vec3_cross(%struct.vec3* %0, %struct.vec3* %1, %struct.vec3* %2) #0 {
  %4 = alloca %struct.vec3*, align 8
  %5 = alloca %struct.vec3*, align 8
  %6 = alloca %struct.vec3*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vec3* %0, %struct.vec3** %4, align 8
  store %struct.vec3* %1, %struct.vec3** %5, align 8
  store %struct.vec3* %2, %struct.vec3** %6, align 8
  %11 = load %struct.vec3*, %struct.vec3** %5, align 8
  %12 = getelementptr inbounds %struct.vec3, %struct.vec3* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vec3*, %struct.vec3** %5, align 8
  %15 = getelementptr inbounds %struct.vec3, %struct.vec3* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @_MM_SHUFFLE(i32 3, i32 0, i32 2, i32 1)
  %18 = call i32 @_mm_shuffle_ps(i32 %13, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.vec3*, %struct.vec3** %6, align 8
  %20 = getelementptr inbounds %struct.vec3, %struct.vec3* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vec3*, %struct.vec3** %6, align 8
  %23 = getelementptr inbounds %struct.vec3, %struct.vec3* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @_MM_SHUFFLE(i32 3, i32 1, i32 0, i32 2)
  %26 = call i32 @_mm_shuffle_ps(i32 %21, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.vec3*, %struct.vec3** %5, align 8
  %28 = getelementptr inbounds %struct.vec3, %struct.vec3* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vec3*, %struct.vec3** %5, align 8
  %31 = getelementptr inbounds %struct.vec3, %struct.vec3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @_MM_SHUFFLE(i32 3, i32 1, i32 0, i32 2)
  %34 = call i32 @_mm_shuffle_ps(i32 %29, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.vec3*, %struct.vec3** %6, align 8
  %36 = getelementptr inbounds %struct.vec3, %struct.vec3* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vec3*, %struct.vec3** %6, align 8
  %39 = getelementptr inbounds %struct.vec3, %struct.vec3* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @_MM_SHUFFLE(i32 3, i32 0, i32 2, i32 1)
  %42 = call i32 @_mm_shuffle_ps(i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @_mm_mul_ps(i32 %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @_mm_mul_ps(i32 %46, i32 %47)
  %49 = call i32 @_mm_sub_ps(i32 %45, i32 %48)
  %50 = load %struct.vec3*, %struct.vec3** %4, align 8
  %51 = getelementptr inbounds %struct.vec3, %struct.vec3* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  ret void
}

declare dso_local i32 @_mm_shuffle_ps(i32, i32, i32) #1

declare dso_local i32 @_MM_SHUFFLE(i32, i32, i32, i32) #1

declare dso_local i32 @_mm_sub_ps(i32, i32) #1

declare dso_local i32 @_mm_mul_ps(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
