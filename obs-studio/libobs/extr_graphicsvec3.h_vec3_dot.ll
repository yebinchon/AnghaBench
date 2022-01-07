; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsvec3.h_vec3_dot.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsvec3.h_vec3_dot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { float, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.vec3*, %struct.vec3*)* @vec3_dot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @vec3_dot(%struct.vec3* %0, %struct.vec3* %1) #0 {
  %3 = alloca %struct.vec3*, align 8
  %4 = alloca %struct.vec3*, align 8
  %5 = alloca %struct.vec3, align 8
  %6 = alloca i8*, align 8
  store %struct.vec3* %0, %struct.vec3** %3, align 8
  store %struct.vec3* %1, %struct.vec3** %4, align 8
  %7 = load %struct.vec3*, %struct.vec3** %3, align 8
  %8 = getelementptr inbounds %struct.vec3, %struct.vec3* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.vec3*, %struct.vec3** %4, align 8
  %11 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @_mm_mul_ps(i8* %9, i8* %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @_mm_movehl_ps(i8* %14, i8* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @_mm_add_ps(i32 %16, i8* %17)
  %19 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @_mm_shuffle_ps(i8* %21, i8* %23, i32 85)
  %25 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @_mm_add_ps(i32 %24, i8* %26)
  %28 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 0
  %30 = load float, float* %29, align 8
  ret float %30
}

declare dso_local i8* @_mm_mul_ps(i8*, i8*) #1

declare dso_local i8* @_mm_add_ps(i32, i8*) #1

declare dso_local i32 @_mm_movehl_ps(i8*, i8*) #1

declare dso_local i32 @_mm_shuffle_ps(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
