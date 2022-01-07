; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec4.c_vec4_transform.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec4.c_vec4_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec4 = type { i8*, i8*, i8*, i8* }
%struct.matrix4 = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vec4_transform(%struct.vec4* %0, %struct.vec4* %1, %struct.matrix4* %2) #0 {
  %4 = alloca %struct.vec4*, align 8
  %5 = alloca %struct.vec4*, align 8
  %6 = alloca %struct.matrix4*, align 8
  %7 = alloca %struct.vec4, align 8
  %8 = alloca %struct.matrix4, align 4
  store %struct.vec4* %0, %struct.vec4** %4, align 8
  store %struct.vec4* %1, %struct.vec4** %5, align 8
  store %struct.matrix4* %2, %struct.matrix4** %6, align 8
  %9 = load %struct.matrix4*, %struct.matrix4** %6, align 8
  %10 = call i32 @matrix4_transpose(%struct.matrix4* %8, %struct.matrix4* %9)
  %11 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %8, i32 0, i32 3
  %12 = load %struct.vec4*, %struct.vec4** %5, align 8
  %13 = call i8* @vec4_dot(i32* %11, %struct.vec4* %12)
  %14 = getelementptr inbounds %struct.vec4, %struct.vec4* %7, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %8, i32 0, i32 2
  %16 = load %struct.vec4*, %struct.vec4** %5, align 8
  %17 = call i8* @vec4_dot(i32* %15, %struct.vec4* %16)
  %18 = getelementptr inbounds %struct.vec4, %struct.vec4* %7, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %8, i32 0, i32 1
  %20 = load %struct.vec4*, %struct.vec4** %5, align 8
  %21 = call i8* @vec4_dot(i32* %19, %struct.vec4* %20)
  %22 = getelementptr inbounds %struct.vec4, %struct.vec4* %7, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %8, i32 0, i32 0
  %24 = load %struct.vec4*, %struct.vec4** %5, align 8
  %25 = call i8* @vec4_dot(i32* %23, %struct.vec4* %24)
  %26 = getelementptr inbounds %struct.vec4, %struct.vec4* %7, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load %struct.vec4*, %struct.vec4** %4, align 8
  %28 = call i32 @vec4_copy(%struct.vec4* %27, %struct.vec4* %7)
  ret void
}

declare dso_local i32 @matrix4_transpose(%struct.matrix4*, %struct.matrix4*) #1

declare dso_local i8* @vec4_dot(i32*, %struct.vec4*) #1

declare dso_local i32 @vec4_copy(%struct.vec4*, %struct.vec4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
