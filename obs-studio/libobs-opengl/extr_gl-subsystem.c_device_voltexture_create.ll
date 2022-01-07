; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_voltexture_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_voltexture_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @device_voltexture_create(i32** %0, i32** %1, i32** %2, i32** %3, i32 %4, i32** %5, i32** %6, i32** %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32**, align 8
  store i32** %0, i32*** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i32** %6, i32*** %15, align 8
  store i32** %7, i32*** %16, align 8
  %17 = load i32**, i32*** %9, align 8
  %18 = ptrtoint i32** %17 to i32
  %19 = call i32 @UNUSED_PARAMETER(i32 %18)
  %20 = load i32**, i32*** %10, align 8
  %21 = ptrtoint i32** %20 to i32
  %22 = call i32 @UNUSED_PARAMETER(i32 %21)
  %23 = load i32**, i32*** %11, align 8
  %24 = ptrtoint i32** %23 to i32
  %25 = call i32 @UNUSED_PARAMETER(i32 %24)
  %26 = load i32**, i32*** %12, align 8
  %27 = ptrtoint i32** %26 to i32
  %28 = call i32 @UNUSED_PARAMETER(i32 %27)
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @UNUSED_PARAMETER(i32 %29)
  %31 = load i32**, i32*** %14, align 8
  %32 = ptrtoint i32** %31 to i32
  %33 = call i32 @UNUSED_PARAMETER(i32 %32)
  %34 = load i32**, i32*** %15, align 8
  %35 = ptrtoint i32** %34 to i32
  %36 = call i32 @UNUSED_PARAMETER(i32 %35)
  %37 = load i32**, i32*** %16, align 8
  %38 = ptrtoint i32** %37 to i32
  %39 = call i32 @UNUSED_PARAMETER(i32 %38)
  ret i32* null
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
