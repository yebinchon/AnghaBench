; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec3.c_vec3_rotate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec3.c_vec3_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { float, i8*, i8*, i8* }
%struct.matrix3 = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vec3_rotate(%struct.vec3* %0, %struct.vec3* %1, %struct.matrix3* %2) #0 {
  %4 = alloca %struct.vec3*, align 8
  %5 = alloca %struct.vec3*, align 8
  %6 = alloca %struct.matrix3*, align 8
  %7 = alloca %struct.vec3, align 8
  store %struct.vec3* %0, %struct.vec3** %4, align 8
  store %struct.vec3* %1, %struct.vec3** %5, align 8
  store %struct.matrix3* %2, %struct.matrix3** %6, align 8
  %8 = load %struct.vec3*, %struct.vec3** %5, align 8
  %9 = call i32 @vec3_copy(%struct.vec3* %7, %struct.vec3* %8)
  %10 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %11 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %10, i32 0, i32 2
  %12 = call i8* @vec3_dot(%struct.vec3* %7, i32* %11)
  %13 = load %struct.vec3*, %struct.vec3** %4, align 8
  %14 = getelementptr inbounds %struct.vec3, %struct.vec3* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %16 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %15, i32 0, i32 1
  %17 = call i8* @vec3_dot(%struct.vec3* %7, i32* %16)
  %18 = load %struct.vec3*, %struct.vec3** %4, align 8
  %19 = getelementptr inbounds %struct.vec3, %struct.vec3* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %21 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %20, i32 0, i32 0
  %22 = call i8* @vec3_dot(%struct.vec3* %7, i32* %21)
  %23 = load %struct.vec3*, %struct.vec3** %4, align 8
  %24 = getelementptr inbounds %struct.vec3, %struct.vec3* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.vec3*, %struct.vec3** %4, align 8
  %26 = getelementptr inbounds %struct.vec3, %struct.vec3* %25, i32 0, i32 0
  store float 0.000000e+00, float* %26, align 8
  ret void
}

declare dso_local i32 @vec3_copy(%struct.vec3*, %struct.vec3*) #1

declare dso_local i8* @vec3_dot(%struct.vec3*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
