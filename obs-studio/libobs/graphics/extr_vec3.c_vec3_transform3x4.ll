; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec3.c_vec3_transform3x4.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec3.c_vec3_transform3x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { float, i8*, i8*, i8* }
%struct.matrix3 = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vec3_transform3x4(%struct.vec3* %0, %struct.vec3* %1, %struct.matrix3* %2) #0 {
  %4 = alloca %struct.vec3*, align 8
  %5 = alloca %struct.vec3*, align 8
  %6 = alloca %struct.matrix3*, align 8
  %7 = alloca %struct.vec3, align 8
  store %struct.vec3* %0, %struct.vec3** %4, align 8
  store %struct.vec3* %1, %struct.vec3** %5, align 8
  store %struct.matrix3* %2, %struct.matrix3** %6, align 8
  %8 = load %struct.vec3*, %struct.vec3** %5, align 8
  %9 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %10 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %9, i32 0, i32 3
  %11 = call i32 @vec3_sub(%struct.vec3* %7, %struct.vec3* %8, i32* %10)
  %12 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %13 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %12, i32 0, i32 2
  %14 = call i8* @vec3_dot(%struct.vec3* %7, i32* %13)
  %15 = load %struct.vec3*, %struct.vec3** %4, align 8
  %16 = getelementptr inbounds %struct.vec3, %struct.vec3* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %18 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %17, i32 0, i32 1
  %19 = call i8* @vec3_dot(%struct.vec3* %7, i32* %18)
  %20 = load %struct.vec3*, %struct.vec3** %4, align 8
  %21 = getelementptr inbounds %struct.vec3, %struct.vec3* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %23 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %22, i32 0, i32 0
  %24 = call i8* @vec3_dot(%struct.vec3* %7, i32* %23)
  %25 = load %struct.vec3*, %struct.vec3** %4, align 8
  %26 = getelementptr inbounds %struct.vec3, %struct.vec3* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.vec3*, %struct.vec3** %4, align 8
  %28 = getelementptr inbounds %struct.vec3, %struct.vec3* %27, i32 0, i32 0
  store float 0.000000e+00, float* %28, align 8
  ret void
}

declare dso_local i32 @vec3_sub(%struct.vec3*, %struct.vec3*, i32*) #1

declare dso_local i8* @vec3_dot(%struct.vec3*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
